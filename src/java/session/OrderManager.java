package session;

import cart.ShoppingCart;
import cart.ShoppingCartItem;
import entity.Cart;
import entity.CartElement;
//import entity.CartElement;
import entity.Customer;
import entity.CustomerOrder;
import entity.OrderedProduct;
import entity.Product;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import javax.annotation.Resource;
import javax.ejb.SessionContext;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Baptiste
 */
@Stateless
public class OrderManager {

    @PersistenceContext(unitName = "E-commerce_JSPPU")
    private EntityManager em;
    @Resource
    private SessionContext context;

    /*Méthode permettant de lancer le processus de commande*/
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public CustomerOrder placeOrder(Customer customer, ShoppingCart cart) {

        CustomerOrder order = addOrder(customer, cart);

        return order;

    }

    public void addCart(Customer customer, Boolean isPaid) {
        Cart cartBdd = new Cart();
        cartBdd.setIdCustomer(customer);
        cartBdd.setIsPaid(isPaid);

        em.persist(cartBdd);
    }

    /* Méthode permettant d'enregistrer un utilisateur dans la base de donnée*/
    public void addCustomer(String nickname, String password, String email) {

        Customer customer = new Customer();

        customer.setNickname(nickname);
        customer.setPassword(password);
        customer.setEmail(email);

        em.persist(customer);
        em.flush();

    }

    /* Méthode permettant d'ajouter un élément dans le panier de l'utilisateur*/
    public void addCartElement(Cart idCart, Product idProduct) {

        Query q = em.createQuery("SELECT ce FROM CartElement ce WHERE ce.idCart = :idCart AND ce.idProduct = :idProduct");
        q.setParameter("idCart", idCart);
        q.setParameter("idProduct", idProduct);

        try {
            CartElement ce = (CartElement) q.getSingleResult();

            ce.setQuantity(ce.getQuantity() + 1);
            em.persist(ce);

        } catch (Exception e) {
            CartElement ce = new CartElement();
            ce.setIdCart(idCart);
            ce.setIdProduct(idProduct);
            ce.setQuantity(1);
            em.persist(ce);
        }

    }

    /* Méthode permettant de modifier un élément dans le panier de l'utilisateur*/
    public void setCartElement(Cart idCart, Product idProduct, int quantity) {

        Query q = em.createQuery("SELECT ce FROM CartElement ce WHERE ce.idCart = :idCart AND  ce.idProduct = :idProduct");
        q.setParameter("idCart", idCart);
        q.setParameter("idProduct", idProduct);

        try {
            CartElement ce = (CartElement) q.getSingleResult();

            if (quantity == 0) {

                em.remove(ce);
            } else {

                ce.setQuantity(quantity);
                em.persist(ce);
            }

        } catch (Exception e) {

        }

    }

    public Product getProduct(int idProduct) {
        Product product = em.find(Product.class, idProduct);
        return product;
    }

    public Customer getCustomer(int idCustomer) {
        Customer customer = em.find(Customer.class, idCustomer);
        return customer;
    }

    public Cart getCart(Customer idCustomer, Boolean isPaid) {

        try {
            Query q = em.createQuery("SELECT cart FROM Cart cart WHERE cart.idCustomer = :idCustomer AND cart.isPaid = :isPaid");
            q.setParameter("idCustomer", idCustomer);
            q.setParameter("isPaid", isPaid);

            Cart cart = (Cart) q.getSingleResult();
            return cart;
        } catch (Exception ex) {
            return null;
        }

    }

    public List addElementsToCart(Cart idCart) {
        Query q = em.createQuery("SELECT ce FROM CartElement ce WHERE ce.idCart = :idCart");
        q.setParameter("idCart", idCart);
        List listElement = q.getResultList();

        return listElement;

    }

    public List getOrderByIdCustomer(Customer customerIdcustomer) {
        Query q = em.createQuery("SELECT co FROM CustomerOrder co WHERE co.customerIdcustomer = :customerIdcustomer");
        q.setParameter("customerIdcustomer", customerIdcustomer);
        List listElement = q.getResultList();

        return listElement;
    }

    public List getOrderProductByIdOrder(CustomerOrder idCustomerOrder) {
        Query q = em.createQuery("SELECT op FROM OrderedProduct op WHERE op.idCustomerOrder = :idCustomerOrder");
        q.setParameter("idCustomerOrder", idCustomerOrder);
        List listElement = q.getResultList();

        return listElement;
    }

    /* Méthode permettant de vérifier si un utilisateur existe dans la base de donnée et peut se connecter*/
    public Customer connectCustomer(String nickname, String password) {
        Query q = em.createQuery("SELECT c FROM Customer c WHERE c.nickname = :nickname");
        q.setParameter("nickname", nickname);

        try {
            Customer customer = (Customer) q.getSingleResult();
            if (nickname.equalsIgnoreCase(customer.getNickname()) && password.equals(customer.getPassword())) {
                return customer;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    /* Méthode permettant de créer une commande associé à l'utilisateur*/
    public CustomerOrder addOrder(Customer customer, ShoppingCart cart) {

        CustomerOrder order = new CustomerOrder();
        order.setCustomerIdcustomer(customer);
        order.setAmount(cart.getTotal());

        // Creation d'une date car le default sur la BDD ne marche pas : Constraint Violation
        java.util.Date date = Calendar.getInstance().getTime();
        order.setDateCreated(date);

        Random random = new Random();
        int i = random.nextInt(999999999);
        order.setConfirmationNumber(i);
        em.persist(order);

        return order;
    }

    /* Méthode permettant de créer une liste des produits commandés*/
    public void addOrderedItems(CustomerOrder order, ShoppingCart cart) {
        // Méthode

        List<ShoppingCartItem> items = cart.getItems();

        // Parcours du panier
        for (ShoppingCartItem scItem : items) {

            int productId = scItem.getProduct().getIdproduct();

            // Crée un item commandé en utilisant la clée primaire
            OrderedProduct orderedItem = new OrderedProduct();

            // Met à jour la quantité
            orderedItem.setIdCustomerOrder(order);
            orderedItem.setIdProduct(scItem.getProduct());
            orderedItem.setQuantity(scItem.getQuantity());
            em.persist(orderedItem);
        }
    }

    public Customer editUserInfo(Customer customer, String nickname, String email) {

          Customer customer1 = em.find(Customer.class, customer.getIdcustomer());
     
        
        
        customer1.setNickname(nickname);
        customer1.setEmail(email);
        em.persist(customer1);
        return customer1;
        

    }

    public Customer editFactureInfo(Customer customer, String firstname, String name, String civility, String address, String cityRegion, String ccNumber, String country, String phone) {

        Customer customer2 = em.find(Customer.class, customer.getIdcustomer());
        customer2.setFirtname(firstname);
        customer2.setName(name);
        customer2.setCivility(civility);
        customer2.setAdress(address);
        customer2.setCityRegion(cityRegion);
        customer2.setCcNumber(ccNumber);
        customer2.setCountry(country);
        customer2.setPhone(phone);


         em.persist(customer2);
        return customer2;

    }
}

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
        //Customer customer = addCustomer(nickname, password, firstname,name,email,phone, address, cityRegion, ccNumber);

    }

    public void addCart(Customer customer, Boolean isPaid) {
        Cart cartBdd = new Cart();
        cartBdd.setIdCustomer(customer);
        cartBdd.setIsPaid(isPaid);

        em.persist(cartBdd);
    }

    /* Méthode permettant d'enregistrer un utilisateur dans la base de donnée*/
    public void addCustomer(String nickname, String password, String firstname, String name, String email, String phone, String address, String cityRegion, String ccNumber) {

        Customer customer = new Customer();

        customer.setNickname(nickname);
        customer.setPassword(password);
        customer.setFirtname(firstname);
        customer.setName(name);
        customer.setEmail(email);
        customer.setPhone(phone);
        customer.setAdress(address);
        customer.setCityRegion(cityRegion);
        customer.setCcNumber(ccNumber);

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
        order.setAmount(BigDecimal.valueOf(cart.getTotal()));

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
}

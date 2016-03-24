package session;

import cart.ShoppingCart;
import cart.ShoppingCartItem;
import entity.CartElement;
//import entity.CartElement;
import entity.Customer;
import entity.CustomerOrder;
import entity.OrderedProduct;
import entity.OrderedProductPK;
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

        customer.setIdCart(customer.getIdcustomer());

        em.persist(customer);

    }

    /* Méthode permettant d'ajouter un élément dans le panier de l'utilisateur*/
    public void addCartElement(int cartId, int productId) {

        Query q = em.createQuery("SELECT ce FROM CartElement ce WHERE ce.idCart = :cartId AND ce.idProduct = :productId");
        q.setParameter("cartId", cartId);
        q.setParameter("productId", productId);

        try {
            CartElement ce = (CartElement) q.getSingleResult();

            ce.setQuantity(ce.getQuantity() + 1);
            em.persist(ce);

        } catch (Exception e) {
            CartElement ce = new CartElement();
            ce.setIdCart(cartId);
            ce.setIdProduct(productId);
            ce.setQuantity(1);
            em.persist(ce);
        }

    }

    /* Méthode permettant de modifier un élément dans le panier de l'utilisateur*/
    public void setCartElement(int cartId, int productId, int quantity) {

        Query q = em.createQuery("SELECT ce FROM CartElement ce WHERE ce.cartId = :cartId AND  ce.productId = :productId");
        q.setParameter("cartId", cartId);
        q.setParameter("productId", productId);

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

            // Crée l'objet clé primaire
            OrderedProductPK orderedProductPK = new OrderedProductPK();
            orderedProductPK.setCustomerOrderIdcustomerOrder(order.getIdcustomerOrder());
            orderedProductPK.setProductIdproduct(productId);

            // Crée un item commandé en utilisant la clée primaire
            OrderedProduct orderedItem = new OrderedProduct(orderedProductPK);

            // Met à jour la quantité
            orderedItem.setQuantity(scItem.getQuantity());
            em.persist(orderedItem);
        }
    }
}

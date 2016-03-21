/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import cart.ShoppingCart;
import entity.Category;
import entity.Customer;
import entity.CustomerOrder;
import entity.Product;
import java.io.IOException;
import java.util.Collection;
import javax.ejb.EJB;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.CategoryFacade;
import session.OrderManager;
import session.ProductFacade;

/**
 *
 * @author Baptiste
 */
@WebServlet(name = "ControllerServlet",
        loadOnStartup = 1,
        urlPatterns = {"/", "/category",
            "/addToCart",
            "/clearCart",
            "/viewCart",
            "/updateCart",
            "/checkout",
            "/register",
            "/payment", "/disconnect"})
public class ControllerServlet extends HttpServlet {

    private String surcharge;

    @EJB
    private CategoryFacade categoryFacade;

    @EJB
    private ProductFacade productFacade;
    @EJB
    private OrderManager orderManager;

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

        super.init(servletConfig);
        surcharge = servletConfig.getServletContext().getInitParameter("deliverySurcharge");
        // store category list in servlet context
        getServletContext().setAttribute("categories", categoryFacade.findAll());
        getServletContext().setAttribute("productsSortedByDate", productFacade.findAllAndSortedByDate());
        getServletContext().setAttribute("productsSortedByPrice", productFacade.findAllAndSortedByPrice());
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userPath = request.getServletPath();
        HttpSession session = request.getSession();
        Category selectedCategory;
        Collection<Product> categoryProducts;


        if (userPath.equals("/index")) {

            userPath = "/index";

        } else if (userPath.equals("/disconnect")) {

            //session.getAttribute("customer");
            session.invalidate();

            userPath = "/index";

        }
        else if (userPath.equals("/category")) {

            
            String categoryId = request.getQueryString();

            if (categoryId != null) {

                
                selectedCategory = categoryFacade.find(Integer.parseInt(categoryId));

                // Change la catégorie selectionné
                session.setAttribute("selectedCategory", selectedCategory);

                // Récupère les produits d'une catégorie
                categoryProducts = selectedCategory.getProductCollection();

                //Place les produits associés à la catégorie dans la session
                session.setAttribute("categoryProducts", categoryProducts);

            }

          
        } else if (userPath.equals("/viewCart")) {
         

            String clear = request.getParameter("clear");

            if ((clear != null) && clear.equals("true")) {

                ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
                cart.clear();
            }

            userPath = "/cart";
        } 
        else if (userPath.equals("/clearCart")) {

            ShoppingCart cart = (ShoppingCart) session.getAttribute("cart"); //Récupère le panier stocké dans la session
            cart.clear(); //Vide le panier

            userPath = "/cart";

        } else if (userPath.equals("/register")) {

            userPath = "/register";

        } else if (userPath.equals("/payment")) {

            userPath = "/payment";

        } else if (userPath.equals("/checkout")) {

            ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
            if (session.getAttribute("customer") != null && cart != null) {
            } else if (cart != null) {
                userPath = "/register"; //Redirige vers Register si l'utilisateur n'est pas connecté
            } else {
                userPath = "/index"; //Redirige vers index si aucun produit n'est dans le panier
            }

            // calculate total
            //  cart.calculateTotal(surcharge);
        }

     
        String url = "";
        if (!"/index".equals(userPath)) {
            url = "/WEB-INF/view" + userPath + ".jsp";
        } else {
            url = userPath + ".jsp";
        }

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userPath = request.getServletPath();
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");

    
        
        if (userPath.equals("/addToCart")) {

            if (cart == null) {
                // Dans le cas où l'objet panier n'est pas créé, on le crée et le stocke dans la session
                cart = new ShoppingCart();
                session.setAttribute("cart", cart);
            }

            String productId = request.getParameter("productId");

            if (!productId.isEmpty()) {

                Product product = productFacade.find(Integer.parseInt(productId));
                cart.addItem(product); //On ajoute le produit au panier
          
            }
            if (request.getParameter("path").equals("category")) {
                userPath = "/category";
            } else {
                userPath = "/index";
            }

     
        } else if (userPath.equals("/updateCart")) {
       

            String productId = request.getParameter("productId");
            String quantity = request.getParameter("quantity");

            Product product = productFacade.find(Integer.parseInt(productId));
            cart.update(product, quantity); // On met à jour un produit avec la quantité voulue

            userPath = "/cart";

          
        } else if (userPath.equals("/register")) {

            if (request.getParameter("typeForm") != null) {
                String typeFormulaire = request.getParameter("typeForm");

                if (typeFormulaire.equals("connect")) {
                    String nickname = request.getParameter("nickname");
                    String password = request.getParameter("password");
                    try {
                        // On essaye de se connecter à notre compte utilisateur
                        Customer customer = orderManager.connectCustomer(nickname, password);
                        session.setAttribute("customer", customer);

                    } catch (Exception e) {
                    }

                } else if (typeFormulaire.equals("register")) {

                    String nickname = request.getParameter("nickname");
                    String password = request.getParameter("password");
                    String firstname = request.getParameter("firstname");
                    String name = request.getParameter("name");
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    String address = request.getParameter("address");
                    String cityRegion = request.getParameter("cityRegion");
                    String ccNumber = request.getParameter("ccNumber");

                    orderManager.addCustomer(nickname, password, firstname, name, email, phone, address, cityRegion, ccNumber);

                }
            }

            userPath = "/index";

        } else if (userPath.equals("/payment")) {
            
             CustomerOrder order= orderManager.placeOrder((Customer)session.getAttribute("customer"), cart);
             orderManager.addOrderedItems(order, cart); 

             cart.clear();
             session.setAttribute("confirmationNumber",order.getConfirmationNumber());
             userPath = "/confirmation";
            
            
            
          
            
            
                    


        }

        
        String url = "";
        if (!"/index".equals(userPath)) {
            url = "/WEB-INF/view" + userPath + ".jsp";
        } else {
            url = "/" + userPath + ".jsp";
        }

        try {
            request.getRequestDispatcher(url).forward(request, response); //On renvoi vers la page url 

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}

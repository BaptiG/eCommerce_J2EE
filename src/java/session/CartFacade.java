/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.Cart;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Baptiste
 */
@Stateless
public class CartFacade extends AbstractFacade<Cart> {

    @PersistenceContext(unitName = "E-commerce_JSPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CartFacade() {
        super(Cart.class);
    }
    
}

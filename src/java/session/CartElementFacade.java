/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.CartElement;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Baptiste
 */
@Stateless
public class CartElementFacade extends AbstractFacade<CartElement> {

    @PersistenceContext(unitName = "E-commerce_JSPPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CartElementFacade() {
        super(CartElement.class);
    }
    
}

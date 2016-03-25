/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Baptiste
 */
@Entity
@Table(name = "cartElement")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CartElement.findAll", query = "SELECT c FROM CartElement c"),
    @NamedQuery(name = "CartElement.findByIdCartElement", query = "SELECT c FROM CartElement c WHERE c.idCartElement = :idCartElement"),
    @NamedQuery(name = "CartElement.findByQuantity", query = "SELECT c FROM CartElement c WHERE c.quantity = :quantity")})
public class CartElement implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_CartElement")
    private Integer idCartElement;
    @Basic(optional = false)
    @NotNull
    @Column(name = "quantity")
    private int quantity;
    @JoinColumn(name = "id_Cart", referencedColumnName = "id_Cart")
    @ManyToOne(optional = false)
    private Cart idCart;
    @JoinColumn(name = "id_Product", referencedColumnName = "idproduct")
    @ManyToOne(optional = false)
    private Product idProduct;

    public CartElement() {
    }

    public CartElement(Integer idCartElement) {
        this.idCartElement = idCartElement;
    }

    public CartElement(Integer idCartElement, int quantity) {
        this.idCartElement = idCartElement;
        this.quantity = quantity;
    }

    public Integer getIdCartElement() {
        return idCartElement;
    }

    public void setIdCartElement(Integer idCartElement) {
        this.idCartElement = idCartElement;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Cart getIdCart() {
        return idCart;
    }

    public void setIdCart(Cart idCart) {
        this.idCart = idCart;
    }

    public Product getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(Product idProduct) {
        this.idProduct = idProduct;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idCartElement != null ? idCartElement.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CartElement)) {
            return false;
        }
        CartElement other = (CartElement) object;
        if ((this.idCartElement == null && other.idCartElement != null) || (this.idCartElement != null && !this.idCartElement.equals(other.idCartElement))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.CartElement[ idCartElement=" + idCartElement + " ]";
    }
    
}

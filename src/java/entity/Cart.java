/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Baptiste
 */
@Entity
@Table(name = "cart")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cart.findAll", query = "SELECT c FROM Cart c"),
    @NamedQuery(name = "Cart.findByIdCart", query = "SELECT c FROM Cart c WHERE c.idCart = :idCart"),
    @NamedQuery(name = "Cart.findByDateCreated", query = "SELECT c FROM Cart c WHERE c.dateCreated = :dateCreated"),
    @NamedQuery(name = "Cart.findByIsPaid", query = "SELECT c FROM Cart c WHERE c.isPaid = :isPaid")})
public class Cart implements Serializable {

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCart")
    private Collection<CartElement> cartElementCollection;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_Cart")
    private Integer idCart;
    @Column(name = "dateCreated")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateCreated;
    @Column(name = "isPaid")
    private Boolean isPaid;
    @JoinColumn(name = "id_Customer", referencedColumnName = "idcustomer")
    @ManyToOne(optional = false)
    private Customer idCustomer;

    public Cart() {
    }

    public Cart(Integer idCart) {
        this.idCart = idCart;
    }

    public Integer getIdCart() {
        return idCart;
    }

    public void setIdCart(Integer idCart) {
        this.idCart = idCart;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Boolean getIsPaid() {
        return isPaid;
    }

    public void setIsPaid(Boolean isPaid) {
        this.isPaid = isPaid;
    }

    public Customer getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(Customer idCustomer) {
        this.idCustomer = idCustomer;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idCart != null ? idCart.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cart)) {
            return false;
        }
        Cart other = (Cart) object;
        if ((this.idCart == null && other.idCart != null) || (this.idCart != null && !this.idCart.equals(other.idCart))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Cart[ idCart=" + idCart + " ]";
    }

    @XmlTransient
    public Collection<CartElement> getCartElementCollection() {
        return cartElementCollection;
    }

    public void setCartElementCollection(Collection<CartElement> cartElementCollection) {
        this.cartElementCollection = cartElementCollection;
    }
    
}

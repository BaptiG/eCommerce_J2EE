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
@Table(name = "ordered_product")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OrderedProduct.findAll", query = "SELECT o FROM OrderedProduct o"),
    @NamedQuery(name = "OrderedProduct.findByIdOrderedProduct", query = "SELECT o FROM OrderedProduct o WHERE o.idOrderedProduct = :idOrderedProduct"),
    @NamedQuery(name = "OrderedProduct.findByQuantity", query = "SELECT o FROM OrderedProduct o WHERE o.quantity = :quantity")})
public class OrderedProduct implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_OrderedProduct")
    private Integer idOrderedProduct;
    @Basic(optional = false)
    @NotNull
    @Column(name = "quantity")
    private short quantity;
    @JoinColumn(name = "id_CustomerOrder", referencedColumnName = "idcustomer_order")
    @ManyToOne(optional = false)
    private CustomerOrder idCustomerOrder;
    @JoinColumn(name = "id_Product", referencedColumnName = "idproduct")
    @ManyToOne(optional = false)
    private Product idProduct;

    public OrderedProduct() {
    }

    public OrderedProduct(Integer idOrderedProduct) {
        this.idOrderedProduct = idOrderedProduct;
    }

    public OrderedProduct(Integer idOrderedProduct, short quantity) {
        this.idOrderedProduct = idOrderedProduct;
        this.quantity = quantity;
    }

    public Integer getIdOrderedProduct() {
        return idOrderedProduct;
    }

    public void setIdOrderedProduct(Integer idOrderedProduct) {
        this.idOrderedProduct = idOrderedProduct;
    }

    public short getQuantity() {
        return quantity;
    }

    public void setQuantity(short quantity) {
        this.quantity = quantity;
    }

    public CustomerOrder getIdCustomerOrder() {
        return idCustomerOrder;
    }

    public void setIdCustomerOrder(CustomerOrder idCustomerOrder) {
        this.idCustomerOrder = idCustomerOrder;
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
        hash += (idOrderedProduct != null ? idOrderedProduct.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderedProduct)) {
            return false;
        }
        OrderedProduct other = (OrderedProduct) object;
        if ((this.idOrderedProduct == null && other.idOrderedProduct != null) || (this.idOrderedProduct != null && !this.idOrderedProduct.equals(other.idOrderedProduct))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.OrderedProduct[ idOrderedProduct=" + idOrderedProduct + " ]";
    }
    
}

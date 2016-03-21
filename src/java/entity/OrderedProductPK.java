/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Baptiste
 */
@Embeddable
public class OrderedProductPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "customer_order_idcustomer_order")
    private int customerOrderIdcustomerOrder;
    @Basic(optional = false)
    @NotNull
    @Column(name = "product_idproduct")
    private int productIdproduct;

    public OrderedProductPK() {
    }

    public OrderedProductPK(int customerOrderIdcustomerOrder, int productIdproduct) {
        this.customerOrderIdcustomerOrder = customerOrderIdcustomerOrder;
        this.productIdproduct = productIdproduct;
    }

    public int getCustomerOrderIdcustomerOrder() {
        return customerOrderIdcustomerOrder;
    }

    public void setCustomerOrderIdcustomerOrder(int customerOrderIdcustomerOrder) {
        this.customerOrderIdcustomerOrder = customerOrderIdcustomerOrder;
    }

    public int getProductIdproduct() {
        return productIdproduct;
    }

    public void setProductIdproduct(int productIdproduct) {
        this.productIdproduct = productIdproduct;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) customerOrderIdcustomerOrder;
        hash += (int) productIdproduct;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderedProductPK)) {
            return false;
        }
        OrderedProductPK other = (OrderedProductPK) object;
        if (this.customerOrderIdcustomerOrder != other.customerOrderIdcustomerOrder) {
            return false;
        }
        if (this.productIdproduct != other.productIdproduct) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.OrderedProductPK[ customerOrderIdcustomerOrder=" + customerOrderIdcustomerOrder + ", productIdproduct=" + productIdproduct + " ]";
    }
    
}

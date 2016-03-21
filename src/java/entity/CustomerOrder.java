/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
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
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Baptiste
 */
@Entity
@Table(name = "customer_order")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CustomerOrder.findAll", query = "SELECT c FROM CustomerOrder c"),
    @NamedQuery(name = "CustomerOrder.findByIdcustomerOrder", query = "SELECT c FROM CustomerOrder c WHERE c.idcustomerOrder = :idcustomerOrder"),
    @NamedQuery(name = "CustomerOrder.findByAmount", query = "SELECT c FROM CustomerOrder c WHERE c.amount = :amount"),
    @NamedQuery(name = "CustomerOrder.findByDateCreated", query = "SELECT c FROM CustomerOrder c WHERE c.dateCreated = :dateCreated"),
    @NamedQuery(name = "CustomerOrder.findByConfirmationNumber", query = "SELECT c FROM CustomerOrder c WHERE c.confirmationNumber = :confirmationNumber")})
public class CustomerOrder implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcustomer_order")
    private Integer idcustomerOrder;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "amount")
    private BigDecimal amount;
    @Basic(optional = false)
    @NotNull
    @Column(name = "date_created")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateCreated;
    @Basic(optional = false)
    @NotNull
    @Column(name = "confirmation_number")
    private int confirmationNumber;
    @JoinColumn(name = "customer_idcustomer", referencedColumnName = "idcustomer")
    @ManyToOne(optional = false)
    private Customer customerIdcustomer;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "customerOrder")
    private Collection<OrderedProduct> orderedProductCollection;

    public CustomerOrder() {
                java.util.Date date= new java.util.Date();
    dateCreated = new Timestamp(date.getTime());
    }

    public CustomerOrder(Integer idcustomerOrder) {

        this.idcustomerOrder = idcustomerOrder;
    }

    public CustomerOrder(Integer idcustomerOrder, BigDecimal amount, Date dateCreated, int confirmationNumber) {
        this.idcustomerOrder = idcustomerOrder;
        this.amount = amount;
        this.dateCreated = dateCreated;
        this.confirmationNumber = confirmationNumber;
    }

    public Integer getIdcustomerOrder() {
        return idcustomerOrder;
    }

    public void setIdcustomerOrder(Integer idcustomerOrder) {
        this.idcustomerOrder = idcustomerOrder;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public int getConfirmationNumber() {
        return confirmationNumber;
    }

    public void setConfirmationNumber(int confirmationNumber) {
        this.confirmationNumber = confirmationNumber;
    }

    public Customer getCustomerIdcustomer() {
        return customerIdcustomer;
    }

    public void setCustomerIdcustomer(Customer customerIdcustomer) {
        this.customerIdcustomer = customerIdcustomer;
    }

    @XmlTransient
    public Collection<OrderedProduct> getOrderedProductCollection() {
        return orderedProductCollection;
    }

    public void setOrderedProductCollection(Collection<OrderedProduct> orderedProductCollection) {
        this.orderedProductCollection = orderedProductCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcustomerOrder != null ? idcustomerOrder.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CustomerOrder)) {
            return false;
        }
        CustomerOrder other = (CustomerOrder) object;
        if ((this.idcustomerOrder == null && other.idcustomerOrder != null) || (this.idcustomerOrder != null && !this.idcustomerOrder.equals(other.idcustomerOrder))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.CustomerOrder[ idcustomerOrder=" + idcustomerOrder + " ]";
    }
    
}
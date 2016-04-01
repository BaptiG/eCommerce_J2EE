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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Baptiste
 */
@Entity
@Table(name = "customer")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Customer.findAll", query = "SELECT c FROM Customer c"),
    @NamedQuery(name = "Customer.findByIdcustomer", query = "SELECT c FROM Customer c WHERE c.idcustomer = :idcustomer"),
    @NamedQuery(name = "Customer.findByNickname", query = "SELECT c FROM Customer c WHERE c.nickname = :nickname"),
    @NamedQuery(name = "Customer.findByPassword", query = "SELECT c FROM Customer c WHERE c.password = :password"),
    @NamedQuery(name = "Customer.findByFirtname", query = "SELECT c FROM Customer c WHERE c.firtname = :firtname"),
    @NamedQuery(name = "Customer.findByName", query = "SELECT c FROM Customer c WHERE c.name = :name"),
    @NamedQuery(name = "Customer.findByCivility", query = "SELECT c FROM Customer c WHERE c.civility = :civility"),
    @NamedQuery(name = "Customer.findByEmail", query = "SELECT c FROM Customer c WHERE c.email = :email"),
    @NamedQuery(name = "Customer.findByPhone", query = "SELECT c FROM Customer c WHERE c.phone = :phone"),
    @NamedQuery(name = "Customer.findByAdress", query = "SELECT c FROM Customer c WHERE c.adress = :adress"),
    @NamedQuery(name = "Customer.findByCityRegion", query = "SELECT c FROM Customer c WHERE c.cityRegion = :cityRegion"),
    @NamedQuery(name = "Customer.findByCcNumber", query = "SELECT c FROM Customer c WHERE c.ccNumber = :ccNumber"),
    @NamedQuery(name = "Customer.findByFidelityPoint", query = "SELECT c FROM Customer c WHERE c.fidelityPoint = :fidelityPoint"),
    @NamedQuery(name = "Customer.findByCountry", query = "SELECT c FROM Customer c WHERE c.country = :country")})
public class Customer implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcustomer")
    private Integer idcustomer;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "nickname")
    private String nickname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "password")
    private String password;
    @Size(max = 45)
    @Column(name = "firtname")
    private String firtname;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    @Size(max = 10)
    @Column(name = "civility")
    private String civility;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "email")
    private String email;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Size(max = 45)
    @Column(name = "phone")
    private String phone;
    @Size(max = 45)
    @Column(name = "adress")
    private String adress;
    @Size(max = 45)
    @Column(name = "city_region")
    private String cityRegion;
    @Size(max = 45)
    @Column(name = "cc_number")
    private String ccNumber;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fidelityPoint")
    private int fidelityPoint;
    @Size(max = 45)
    @Column(name = "country")
    private String country;

    public Customer() {
    }

    public Customer(Integer idcustomer) {
        this.idcustomer = idcustomer;
    }

    public Customer(Integer idcustomer, String nickname, String password, String email, int fidelityPoint) {
        this.idcustomer = idcustomer;
        this.nickname = nickname;
        this.password = password;
        this.email = email;
        this.fidelityPoint = fidelityPoint;
    }

    public Integer getIdcustomer() {
        return idcustomer;
    }

    public void setIdcustomer(Integer idcustomer) {
        this.idcustomer = idcustomer;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirtname() {
        return firtname;
    }

    public void setFirtname(String firtname) {
        this.firtname = firtname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCivility() {
        return civility;
    }

    public void setCivility(String civility) {
        this.civility = civility;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getCityRegion() {
        return cityRegion;
    }

    public void setCityRegion(String cityRegion) {
        this.cityRegion = cityRegion;
    }

    public String getCcNumber() {
        return ccNumber;
    }

    public void setCcNumber(String ccNumber) {
        this.ccNumber = ccNumber;
    }

    public int getFidelityPoint() {
        return fidelityPoint;
    }

    public void setFidelityPoint(int fidelityPoint) {
        this.fidelityPoint = fidelityPoint;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcustomer != null ? idcustomer.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Customer)) {
            return false;
        }
        Customer other = (Customer) object;
        if ((this.idcustomer == null && other.idcustomer != null) || (this.idcustomer != null && !this.idcustomer.equals(other.idcustomer))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Customer[ idcustomer=" + idcustomer + " ]";
    }
    
}

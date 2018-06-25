/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package storage;
import java.io.Serializable;
import javax.xml.bind.annotation.*;

/**
 *
 * @author sawicky
 */
@XmlAccessorType(XmlAccessType.FIELD)
public class users implements Serializable {
    @XmlElement(name = "name")
    private String name;
    @XmlElement(name = "email")
    private String email;    
    @XmlElement(name = "password")
    private String password;
    @XmlElement(name = "registered")
    private String registered;
    
    public users() {
        super();
    }
    public users(String name, String email, String password, String registered) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.registered = registered;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the registered
     */
    public String getRegistered() {
        return registered;
    }

    public void setRegistered(String registered) {
        this.registered = registered;
    }
}
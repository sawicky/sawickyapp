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
public class user implements Serializable {
    @XmlElement(name = "username")
    private String username;
    @XmlElement(name = "password")
    private String password;
    @XmlElement(name = "registered")
    private String registered;
    
    public user() {
        super();
    }
    public user(String username, String password, String registered) {
        this.username = username;
        this.password = password;
        this.registered = registered;
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

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }
}
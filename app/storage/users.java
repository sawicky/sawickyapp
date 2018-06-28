/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package storage;
import java.util.*;
import java.io.Serializable;
import javax.xml.bind.annotation.*;
/**
 *
 * @author sawicky
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="users", namespace="http://www.sawickers.com")
public class users implements Serializable{
    @XmlElement(name = "user")
    private ArrayList<user> list = new ArrayList<user>();
 
    public ArrayList<user> getList() {
        return list;
    }
    public void addUser(user user) {
        list.add(user);
    }
    public void removeUser(user user) {
        list.remove(user);
    }
    public user login(String username, String password) {
        // For each user in the list...
        for (user user : list) {
            if (user.getUsername().equals(username) && user.getPassword().equals(password))
                return user; // Login correct. Return this user.
        }
        return null; // Login incorrect. Return null.
    }
    public user getUser(String username) {
        // For each user in the list...
        for (user user : list) {
            if (user.getUsername().equals(username) )
                return user; // Login correct. Return this user.
        }
        return null; // Login incorrect. Return null.
    }
}

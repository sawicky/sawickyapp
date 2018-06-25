/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package storage;

/**
 *
 * @author sawicky
 */
import java.util.*;
import java.io.*;
import javax.xml.bind.*;

/**
 *
 * @author Proma
 */
public class usersApplication {
    private String filePath;
    private users users;
    
    public usersApplication(){
        
    }
    /**
     * @return the filepath
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     * @param filePath
     * @throws javax.xml.bind.JAXBException
     * @throws java.io.FileNotFoundException
     */
    public void setFilePath(String filePath) throws JAXBException, FileNotFoundException, IOException {
        // Create the unmarshaller
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(users.class);
        Unmarshaller u = jc.createUnmarshaller();
 
// Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(filePath);
        users = (users)u.unmarshal(fin); // This loads the "shop" object
        fin.close();
    }
    public void updateUsers(users users, String filePath) throws Exception {
        this.users = users;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(users.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(users, fout);
        fout.close();
    }
    public void saveUsers() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(users.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(users, fout);
        fout.close();
    }

    /**
     * @return the users
     */
    public users getUsers() {
        return users;
    }

    /**
     * @param users the users to set
     */
    public void setUsers(users users) {
        this.users = users;
    }
    
}
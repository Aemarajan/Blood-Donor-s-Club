/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Raja
 */
public class PostBean {
    String title;
    String content;
    String hospital_name;
    String hospital_city;
    int id;
    String post_method;
    String phonenumber;

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    
    public String getPost_method() {
        return post_method;
    }

    public void setPost_method(String post_method) {
        this.post_method = post_method;
    }
    
    public String getHospital_name() {
        return hospital_name;
    }

    public void setHospital_name(String hospital_name) {
        this.hospital_name = hospital_name;
    }

    public String getHospital_city() {
        return hospital_city;
    }

    public void setHospital_city(String hospital_city) {
        this.hospital_city = hospital_city;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}

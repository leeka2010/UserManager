package net.proselyte.usermanager.model;

import javax.persistence.*;

@Entity
@Table(name = "USER")
public class User {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "AGE")
    private int age;

    @Column(name = "IS_ADMIN")
    private boolean isAdmin;

    @Column(name = "CREATED_DATA")
    private String createdDATA;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public int getAge() {
        return age;}

    public void setAge(int age) {
        this.age = age;}


    public String getName() {
        return name;}

    public void setName(String name) {
        this.name = name;}


    public boolean isAdmin() {
        return isAdmin;}

    public void setAdmin(boolean admin) {
        isAdmin = admin;}


    public String getCreatedDATA() {
        return createdDATA;}

    public void setCreatedDATA(String createdDATA) {
        this.createdDATA = createdDATA;}


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", isAdmin=" + isAdmin +
                ", createdDATA='" + createdDATA + '\'' +
                '}';
    }
}

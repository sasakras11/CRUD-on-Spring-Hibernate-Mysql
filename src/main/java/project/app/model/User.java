package project.app.model;

import org.springframework.context.annotation.Bean;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import java.util.Objects;

@Entity
@Table(name = "users")
public class User {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy  = GenerationType.IDENTITY)
    private int id;

    @Column(name  = "name")
    private String name;

    @Column(name = "age")
    private int age;

    @Column(name = "company")
    private String company;

    @Column(name  = "money")
    private int money;



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getCompany() {
        return company;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;
        User user = (User) o;
        return getAge() == user.getAge() &&
                getMoney() == user.getMoney() &&
                getId() == user.getId() &&
                Objects.equals(getName(), user.getName()) &&
                Objects.equals(getCompany(), user.getCompany());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getName(), getAge(), getCompany(), getMoney(), getId());
    }
}

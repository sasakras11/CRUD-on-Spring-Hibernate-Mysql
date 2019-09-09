package project.app.dao;

import project.app.model.User;

import java.util.List;

public interface DAO {
    List<User> USER_LIST();
    void add(User user);
    void edit(User user);
    void delete(User user);
    User getById(int id);
}

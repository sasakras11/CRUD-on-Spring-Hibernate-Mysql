package project.app.service;

import project.app.dao.DAO;
import project.app.model.User;

import java.util.List;

public interface ServiceInterface {
    List<User> USER_LIST();
    void add(User user);
    void delete(User user);
    void edit(User user);
    User getById(int id);
}

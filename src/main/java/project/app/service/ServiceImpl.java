package project.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.app.dao.DAO;
import project.app.dao.DAOImpl;
import project.app.model.User;

import javax.transaction.Transactional;
import java.util.List;
@Service("ServiceImpl")
public class ServiceImpl implements ServiceInterface{
@Autowired
    private DAO userDAO  = new DAOImpl();

    @Override
    @Transactional
    public List<User> USER_LIST() {
        return userDAO.USER_LIST();
    }

    @Override
    @Transactional
    public void add(User user) {
          userDAO.add(user);
    }

    @Override
    @Transactional
    public void delete(User user) {
    userDAO.delete(user);
    }

    @Override
    @Transactional
    public void edit(User user) {
 userDAO.edit(user);
    }

    @Override
    @Transactional
    public User getById(int id) {
        return userDAO.getById(id);
    }
}

package org.selico.inventory.service.impl;

import org.selico.inventory.dao.UserDao;
import org.selico.inventory.model.User;
import org.selico.inventory.service.UserService;

import java.util.List;

/**
 * @author Yasitha Pandithawatta
 */
public class UserServiceImpl implements UserService {

    private UserDao userDao;

    @Override
    public List<User> getUsers() {
        return userDao.getUsers();
    }

    @Override
    public Object getUserList() {
        return userDao.getUserList();
    }


    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }
}

package org.selico.inventory.dao;

import org.selico.inventory.model.User;

import java.util.List;

/**
 * @author Yasitha Pandithawatta
 */
public interface UserDao {

    /**
     * Get user by username
     *
     * @param username
     * @return User
     */
    User findByUserName(String username);

    /**
     * Get all users
     *
     * @return List of users
     */
    List<User> getUsers();

    Object getUserList();
}

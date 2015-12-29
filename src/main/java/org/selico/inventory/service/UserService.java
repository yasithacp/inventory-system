package org.selico.inventory.service;

import org.selico.inventory.model.User;

import java.util.List;

/**
 * @author Yasitha Pandithawatta
 */
public interface UserService {

    /**
     * Get all users
     *
     * @return
     */
    List<User> getUsers();

    Object getUserList();
}

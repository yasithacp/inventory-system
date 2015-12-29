package org.selico.inventory.dao.impl;

import org.hibernate.SessionFactory;
import org.selico.inventory.dao.UserDao;
import org.selico.inventory.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.ResultSetExtractor;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Yasitha Pandithawatta
 */
public class UserDaoImpl implements UserDao {

    private SessionFactory sessionFactory;

    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    @SuppressWarnings("unchecked")
    public User findByUserName(String username) {
        List<User> users = new ArrayList<User>();

        users = getSessionFactory().getCurrentSession()
                .createQuery("from User where username = ?")
                .setParameter(0, username).list();

        if (users.size() > 0) {
            return users.get(0);
        } else {
            return null;
        }
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> getUsers() {
        List<User> users = new ArrayList<User>();

        users = getSessionFactory().openSession()
                .createQuery("from User").list();

        if (users.size() > 0) {
            return users;
        } else {
            return null;
        }
    }

    @Override
    public List<Object> getUserList() {
        Map<String, String> user;
        List<Object> userList = null;
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("Select * from users u left join user_roles ur on u.username=ur.username");
            ResultSet resultSet = preparedStatement.executeQuery();
            userList = new ArrayList<Object>();
            while (resultSet.next()) {
                user = new HashMap<String, String>();
                user.put("username", resultSet.getString("username"));
                user.put("password", resultSet.getString("password"));
                user.put("role", resultSet.getString("role"));
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }



    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}

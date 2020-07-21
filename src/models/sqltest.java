package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class sqltest {
    public static void main(String[] args) {
        try {
            // Step 1: Allocate a database 'Connection' object
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/student_planner?serverTimezone=BST","root","Neasden1999");

            // Step 2: Allocate a 'Statement' object in the Connection
            Statement stmt = conn.createStatement();


        } catch (
                SQLException ex)

        {
            ex.printStackTrace();
        }  // Step 5: Close conn and stmt - Done automatically by try-with-resources (JDK 7)
    }
}



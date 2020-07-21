package models;

import java.sql.*;

public class Database {
    private Connection conn;


    public Database() {
        try {
            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/student_planner?serverTimezone=BST", "root", "Neasden1999");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void getSubjects() {
        try {
            Statement stmt = conn.createStatement();

            String strSelect = "SELECT name from subjects";

            ResultSet rset = stmt.executeQuery(strSelect);

            System.out.println("The records selected are:");
            int rowCount = 0;
            while (rset.next()) {   // Move the cursor to the next row, return false if no more row

                String name = rset.getString("name");
                System.out.println(name);
                ++rowCount;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    public void addSubjects(String name) {
        try {

            String strSelect = "INSERT INTO subjects (name) VALUES (?) ";

            PreparedStatement preparedStatement =
                    conn.prepareStatement(strSelect);


            preparedStatement.setString(1, name);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


}

package javaapplicationkonyvtar;

import java.sql.*;



public class JavaApplicationKonyvtar {

    public static void main(String[] args) {
        // Adatbázis elérési információk
        String url = "jdbc:mysql://localhost:3306/konyvtar";
        String username = "kolcsonzo";
        String password = "1234";

        try { 
            // Adatbázis kapcsolat létrehozása
            Connection conn = DriverManager.getConnection(url, username, password);

            // SQL lekérdezés
            String sql = "SELECT * FROM kolcsonzok";
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            // Eredmények feldolgozása
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int kolcsonzokId = resultSet.getInt("kolcsonzokId");
                String iro = resultSet.getString("iro");
                String mufaj = resultSet.getString("mufaj");
                String cim = resultSet.getString("cim");

                System.out.println("ID: " + id + ", Kolcsonzok ID: " + kolcsonzokId + ", Író: " + iro + ", Műfaj: " + mufaj + ", Cím: " + cim);
            }

            // SQL lekérdezés
            sql = "SELECT * FROM kolcsonzok_masik_fele";
            resultSet = statement.executeQuery(sql);

            // Eredmények feldolgozása
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String nev = resultSet.getString("nev");
                Date szulido = resultSet.getDate("szulido");

                System.out.println("ID: " + id + ", Név: " + nev + ", Születési idő: " + szulido);
            }

            // Kapcsolat bezárása
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

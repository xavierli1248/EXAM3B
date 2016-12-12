package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customers;

public class ReadQuery2 {
    
    private Connection conn;
    private ResultSet results;
    
    public ReadQuery2(){
        
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery2.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery2.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadQuery2.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery2.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    public void doRead(){
        
        try {
            String query = "Select * FROM customers ORDER BY custID ASC";
            
            PreparedStatement ps = conn.prepareStatement(query);
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery2.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String getHTMLTable(){
        
        String table2 = "";
        
        table2 += "<table>";
        
                table2 += "<th>";
                table2 += "CustID";
                table2 += "</th>";
                
                table2 += "<th>";
                table2 += "FirstName";
                table2 += "</th>";
                
                table2 += "<th>";
                table2 += "LastName";
                table2 += "</th>";
                
                table2 += "<th>";
                table2 += "Addr1";
                table2 += "</th>";
                
                table2 += "<th>";
                table2 += "Addr2";
                table2 += "</th>";
                
                table2 += "<th>";
                table2 += "City";
                table2 += "</th>";
                
                table2 += "<th>";
                table2 += "State";
                table2 += "</th>";
                
                table2 += "<th>";
                table2 += "Zip";
                table2 += "</th>";
                
                table2 += "<th>";
                table2 += "EmailAddr";
                table2 += "</th>";
        
        try {
            while(this.results.next()){
                
                Customers customer = new Customers();
                customer.setCustID(this.results.getInt("custID"));
                customer.setFirstName(this.results.getString("firstName"));
                customer.setLastName(this.results.getString("lastName"));
                customer.setAddr1(this.results.getString("addr1"));
                customer.setAddr2(this.results.getString("addr2"));
                customer.setCity(this.results.getString("city"));
                customer.setState1(this.results.getString("state1"));
                customer.setZip(this.results.getString("zip"));
                customer.setEmailAddr(this.results.getString("emailAddr"));

                
                table2 += "<tr>";

                table2 += "<td>";
                table2 += customer.getCustID();
                table2 += "</td>";
                
                table2 += "<td>";
                table2 += customer.getFirstName();
                table2 += "</td>";
                
                table2 += "<td>";
                table2 += customer.getLastName();
                table2 += "</td>";
                
                table2 += "<td>";
                table2 += customer.getAddr1();
                table2 += "</td>";
                
                table2 += "<td>";
                table2 += customer.getAddr2();
                table2 += "</td>";
                
                table2 += "<td>";
                table2 += customer.getCity();
                table2 += "</td>";
                
                table2 += "<td>";
                table2 += customer.getState1();
                table2 += "</td>";
                
                table2 += "<td>";
                table2 += customer.getZip();
                table2 += "</td>";
                
                table2 += "<td>";
                table2 += customer.getEmailAddr();
                table2 += "</td>";
                
            table2 += "</tr>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        table2 += "</table>";
                
                return table2;
    }
}

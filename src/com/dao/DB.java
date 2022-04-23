package com.dao;

import java.sql.*;

//import org.springframework.jdbc.datasource.DriverManagerDataSource;
public class DB {
    private Connection con;

    private PreparedStatement pstm;

    private String user = "root";

    //123456
    private String password = "123456789";

    private String className = "com.mysql.jdbc.Driver";

    private String url = "jdbc:mysql://localhost:3306/db_chexian?useUnicode=true&characterEncoding=utf8";

    private Connection conn = null;
    private Statement stmt = null;
    ResultSet rs = null;

    /**
     * ≤‚ ‘mysql¡¨Ω”
     **/
    public static void main(String[] args) {
        new DB().getCon();
    }

    public DB() {
        try {
            Class.forName(className);
        } catch (ClassNotFoundException e) {
            System.out.println(" ß∞‹");
            e.printStackTrace();
        }
    }

    public Connection getCon() {
        try {
            con = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            System.out.println(" ß∞‹");
            con = null;
            e.printStackTrace();
        }
        return con;
    }


    public ResultSet executeQuery(String sql) {
        rs = null;
        try {
            getCon();
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
        } catch (SQLException ex) {
            System.err.println("aq.executeQuery:" + ex.getMessage());
        }
        return rs;
    }

    public void executeUpdate(String sql) {
        try {
            getCon();
            stmt = con.createStatement();
            stmt.executeQuery(sql);
            stmt.close();
            con.close();
        } catch (SQLException ex) {
            System.err.println("aq.executeQuery:" + ex.getMessage());
        }
    }

    public void executeMysql(String sql) {
        try {
            getCon();
            stmt = con.createStatement();
            stmt.execute(sql);
            stmt.close();
            con.close();
        } catch (SQLException ex) {
            System.err.println("aq.executeQuery:" + ex.getMessage());
        }
    }

    public void doPstm(String sql, Object[] params) {
        if (sql != null && !sql.equals("")) {
            if (params == null)
                params = new Object[0];

            getCon();
            if (con != null) {
                try {
                    System.out.println(sql);
                    pstm = con.prepareStatement(sql,
                            ResultSet.TYPE_SCROLL_INSENSITIVE,
                            ResultSet.CONCUR_READ_ONLY);
                    for (int i = 0; i < params.length; i++) {
                        pstm.setObject(i + 1, params[i]);
                    }
                    pstm.execute();
                } catch (SQLException e) {
                    System.out.println("doPstm() ß∞‹?");
                    e.printStackTrace();
                }
            }
        }
    }

    public ResultSet getRs() throws SQLException {
        return pstm.getResultSet();
    }

    public int getCount() throws SQLException {
        return pstm.getUpdateCount();
    }

    public void closed() {
        try {
            if (pstm != null)
                pstm.close();
        } catch (SQLException e) {
            System.out.println(" ß∞‹");
            e.printStackTrace();
        }
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            System.out.println(" ß∞‹");
            e.printStackTrace();
        }
    }
}

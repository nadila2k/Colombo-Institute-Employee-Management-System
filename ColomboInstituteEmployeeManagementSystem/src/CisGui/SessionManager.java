/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CisGui;

/**
 *
 * @author nadil
 */
public class SessionManager {
    private static SessionManager instance;
    private String loggedInuserLevel;
    private SessionManager() {
        // Private constructor to enforce singleton pattern
    }
    public static SessionManager getInstance() {
        if (instance == null) {
            instance = new SessionManager();
        }
        return instance;
    }
    public void setLoggedInUserLevel(String UserLevel) {
        this.loggedInuserLevel = UserLevel;
    }
    public String getLoggedInUserLevel() {
        return loggedInuserLevel;
    }
    public boolean isLoggedIn() {
        return loggedInuserLevel != null;
    }
    public void logout() {
        loggedInuserLevel = null;
    }
}

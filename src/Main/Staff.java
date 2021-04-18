package Main;

import Admins.AdminActivity;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.ImageIcon;

import java.awt.HeadlessException;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import staffpanel.Dashboard;

public class Staff extends javax.swing.JFrame {

    PreparedStatement prp = null;
    ResultSet result = null;
    Connection connection = null;
    String username;

    public Staff() {
        initComponents();
        ImageIcon ic = new ImageIcon(getClass().getResource("/Images/Dairy.png"));
        this.setIconImage(ic.getImage());
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        mLabel = new java.awt.Label();
        dUser = new javax.swing.JLabel();
        rUserField = new javax.swing.JTextField();
        plbl = new javax.swing.JLabel();
        rPassField = new javax.swing.JPasswordField();
        rExitBtn = new javax.swing.JButton();
        rLoginBtn = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Staff");
        setMaximizedBounds(new java.awt.Rectangle(0, 0, 1000, 550));
        setPreferredSize(new java.awt.Dimension(1000, 550));
        setResizable(false);
        setSize(new java.awt.Dimension(1000, 550));
        getContentPane().setLayout(null);

        mLabel.setAlignment(java.awt.Label.CENTER);
        mLabel.setBackground(new java.awt.Color(0, 153, 153));
        mLabel.setFont(new java.awt.Font("Arial", 0, 24)); // NOI18N
        mLabel.setForeground(new java.awt.Color(255, 255, 255));
        mLabel.setText("Dairy Management System");
        getContentPane().add(mLabel);
        mLabel.setBounds(0, 34, 1000, 70);

        dUser.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        dUser.setText("Username:");
        getContentPane().add(dUser);
        dUser.setBounds(262, 168, 116, 29);

        rUserField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rUserFieldActionPerformed(evt);
            }
        });
        rUserField.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rUserFieldKeyPressed(evt);
            }
        });
        getContentPane().add(rUserField);
        rUserField.setBounds(388, 168, 279, 29);

        plbl.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        plbl.setText("Password:");
        getContentPane().add(plbl);
        plbl.setBounds(270, 250, 109, 29);

        rPassField.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rPassFieldKeyPressed(evt);
            }
        });
        getContentPane().add(rPassField);
        rPassField.setBounds(390, 250, 279, 29);

        rExitBtn.setBackground(new java.awt.Color(0, 153, 153));
        rExitBtn.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        rExitBtn.setForeground(new java.awt.Color(255, 255, 255));
        rExitBtn.setText("Home");
        rExitBtn.setMaximumSize(new java.awt.Dimension(75, 31));
        rExitBtn.setMinimumSize(new java.awt.Dimension(75, 31));
        rExitBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rExitBtnActionPerformed(evt);
            }
        });
        getContentPane().add(rExitBtn);
        rExitBtn.setBounds(300, 410, 91, 30);

        rLoginBtn.setBackground(new java.awt.Color(0, 153, 153));
        rLoginBtn.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        rLoginBtn.setForeground(new java.awt.Color(255, 255, 255));
        rLoginBtn.setText("Login");
        rLoginBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rLoginBtnActionPerformed(evt);
            }
        });
        getContentPane().add(rLoginBtn);
        rLoginBtn.setBounds(550, 410, 91, 30);

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 0, 0));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        getContentPane().add(jLabel1);
        jLabel1.setBounds(190, 320, 550, 40);

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void rExitBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rExitBtnActionPerformed
        Hompage Dairy = new Hompage();
        Dairy.setVisible(true);
        dispose();
    }//GEN-LAST:event_rExitBtnActionPerformed

    private void rLoginBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rLoginBtnActionPerformed
        if (rUserField.getText().trim().isEmpty() && rPassField.getText().trim().isEmpty()) {
            jLabel1.setText("Username and Password fields cannot be empty");
        } else if (rUserField.getText().trim().isEmpty()) {
            jLabel1.setText("Username cannot be empty");
        } else if (rPassField.getText().trim().isEmpty()) {
            jLabel1.setText("Password cannot be empty");
        } else {
            
            connection = Connector.ConnectDb();
            String user = rUserField.getText();
            String pass = String.valueOf(rPassField.getPassword());
            try {
                String sql = "select login , Password from staff where login='" + user + "'";
                prp = connection.prepareStatement(sql);
                result = prp.executeQuery();
                result.first();
                if (pass.equals(result.getString("Password"))) {
                    Dashboard rActivity = new Dashboard();
                    rActivity.setVisible(true);
                    username = user;
                    rActivity.username = username;
                    JOptionPane.showMessageDialog(null, "Login Succesful", "Welcome " + user, JOptionPane.INFORMATION_MESSAGE);
                    dispose();
                    connection.close();
                } else {
                    if (rUserField.getText().trim().isEmpty() && rPassField.getText().trim().isEmpty()) {
                        jLabel1.setText("Username and Password fields cannot be empty");
                    } else if (rUserField.getText().trim().isEmpty()) {
                        jLabel1.setText("Username cannot be empty");
                    } else if (rPassField.getText().trim().isEmpty()) {
                        jLabel1.setText("Password cannot be empty");
                    } else {
                        JOptionPane.showMessageDialog(null, "Login Failed", "Error", JOptionPane.WARNING_MESSAGE);
                    }
                }

            } catch (HeadlessException | SQLException e) {
                
                System.out.println(e.getMessage());
                JOptionPane.showMessageDialog(null, "The Username or Password is incorrect.");
            }
        }
    }//GEN-LAST:event_rLoginBtnActionPerformed

    private void rUserFieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rUserFieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_rUserFieldActionPerformed

    private void rUserFieldKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_rUserFieldKeyPressed
        // TODO add your handling code here:
        jLabel1.setText("");
    }//GEN-LAST:event_rUserFieldKeyPressed

    private void rPassFieldKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_rPassFieldKeyPressed
        // TODO add your handling code here:
        jLabel1.setText("");
    }//GEN-LAST:event_rPassFieldKeyPressed
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(() -> {
            new Staff().setVisible(true);
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel dUser;
    private javax.swing.JLabel jLabel1;
    private java.awt.Label mLabel;
    private javax.swing.JLabel plbl;
    private javax.swing.JButton rExitBtn;
    private javax.swing.JButton rLoginBtn;
    private javax.swing.JPasswordField rPassField;
    private javax.swing.JTextField rUserField;
    // End of variables declaration//GEN-END:variables
}

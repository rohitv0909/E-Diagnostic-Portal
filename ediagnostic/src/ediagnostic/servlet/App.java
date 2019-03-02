package ediagnostic.servlet;
import java.applet.*;
import java.awt.*;
import java.awt.event.*;
 
/**
 *
 * @author MOR08195294
 */
public class App extends java.applet.Applet
{
    
	public void paint(Graphics g){  
		Font f = new Font("Helvetica", Font.BOLD,20);
		g.setFont(f);
		g.drawString("Keep Smiling!!!", 50, 30);
		g.setColor(Color.yellow);
		g.fillOval(60, 60, 200, 200);
		g.setColor(Color.black);
		g.fillOval(100, 100, 20, 50);
		g.fillOval(195, 100, 20, 50);
		g.drawArc(110, 130, 95, 95, 0, -180);  
		 
	}
}
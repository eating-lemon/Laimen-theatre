package test.dianying;

import test.*;
import java.awt.Graphics;
import java.awt.Image;
import javax.swing.ImageIcon;
import javax.swing.JPanel;

public class Cuntu extends JPanel{
    
    ImageIcon icon;
    Image img;
    public Cuntu(String s)
    {
        icon=new ImageIcon(getClass().getResource(s));
        img=icon.getImage();
    }
    public void paintComponent(Graphics g)
    {
        repaint();
        super.paintComponent(g);
        g.drawImage(img,0,0,this.getWidth(),this.getHeight(),this);
    }
    
}

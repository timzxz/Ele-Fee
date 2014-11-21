package myele;
import java.awt.*;   
import java.awt.event.*;   
import javax.swing.*;   
   
//设定内部结构包括内部按钮   
//############################################################//   
//set inner of lift   
public class InnerButton extends JPanel {   
    int numOfFloor;   
       
    JButton openButton,closeButton;   
    JButton[] stopButton;   
       
    public InnerButton(int numOfFloor) {   
        //init   
        this.numOfFloor=numOfFloor;   
           
        setBackground(Color.GRAY);   
           
        //set FloorChoiceButton   
        closeButton=new JButton("关");   
        openButton=new JButton("开");   
        stopButton=new JButton[numOfFloor+1];   
        for(int i=numOfFloor;i>=1;i--)   
            stopButton[i]=new JButton(String.valueOf(i));   
           
           
        setLayout(new GridLayout((numOfFloor+3)/2,2,10,10));   
        if(numOfFloor%2==1)   
            add(new JButton());   
           
        for(int i=numOfFloor;i>=1;i--)   
            add( stopButton[i]);   
               
        add(openButton);   
        add(closeButton);   
    }   
}      
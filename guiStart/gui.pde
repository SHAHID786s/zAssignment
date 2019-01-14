/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void messagesToZumo_change(GTextArea source, GEvent event) { //_CODE_:textarea1:653858:
  println("SENDING MESSAGE TO ZUMO_BOT");
} //_CODE_:textarea1:653858:

public void sendMessage_click(GButton source, GEvent event) { //_CODE_:button1:500642:
  //println("button1 - GButton >> GEvent." + event + " @ " + millis());
    println("send button clicked");
} //_CODE_:button1:500642:

public void messagesFromZumo_change(GTextField source, GEvent event) { //_CODE_:textfield1:568846:
  println("RECIEVING MESSAGES FROM ZUMO_BOT");
} //_CODE_:textfield1:568846:

public void Left_click(GButton source, GEvent event) { //_CODE_:button2:308221:
port.write('L');
println("left command sent to ZUMO_BOT");
} //_CODE_:button2:308221:

public void Right_click(GButton source, GEvent event) { //_CODE_:button3:604378:
  println("right button clicked");
} //_CODE_:button3:604378:

public void Forward_click(GButton source, GEvent event) { //_CODE_:button4:348760:
println("forward button clicked");
} 

public void Back_click(GButton source, GEvent event) { //_CODE_:button5:984108:
  println("back button clicked");
} //_CODE_:button5:984108:

public void Automate_click(GButton source, GEvent event) { //_CODE_:button5:984108:
  port.write('A');
  println("Automate command sent to ZUMO_BOT");
  messagesToZumo.setText("Automating Mode");
   messagesFromZumo.setText(" ");
} 
public void Room_Left_click(GButton source, GEvent event) { //_CODE_:button5:984108:
  port.write('Y');
  println("Room_Left command sent to ZUMO_BOT");    
} 
public void Scan_click(GButton source, GEvent event) { //_CODE_:button5:984108:
  port.write('G');
  println("Scan command sent to ZUMO_BOT");
} //_CODE_:button5:984108:

public void Room_Right_click(GButton source, GEvent event) { //_CODE_:button5:984108:
  port.write('Z');
  println("Room_Right command sent to ZUMO_BOT");  
} 


public void Stop_click(GButton source, GEvent event) { //_CODE_:button5:984108:
  port.write('S');
  println("Stop command sent to ZUMO_BOT");
  messagesToZumo.setText("Stop");
   messagesFromZumo.setText("");
} //_CODE_:button5:984108:

public void Calibrate_click(GButton source, GEvent event) { //_CODE_:button5:984108:
  port.write('C');
  println("Calibrate command sent to ZUMO_BOT");
} 




// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  messagesToZumo = new GTextArea(this, 237, 11, 198, 199, G4P.SCROLLBARS_BOTH | G4P.SCROLLBARS_AUTOHIDE);
  messagesToZumo.setText("Messages from Zumo");
  messagesToZumo.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  messagesToZumo.setOpaque(true);
  messagesToZumo.addEventHandler(this, "messagesToZumo_change");
  sendMessage = new GButton(this, 19, 275, 91, 60);
  sendMessage.setTextAlign(GAlign.LEFT, GAlign.TOP);
  sendMessage.setText("Send message to Zumo");
  sendMessage.setTextBold();
  sendMessage.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  sendMessage.addEventHandler(this, "sendMessage_click");
  messagesFromZumo = new GTextField(this, 110, 300, 160, 30, G4P.SCROLLBARS_NONE);
  messagesFromZumo.setText("Messages To Zumo");
  messagesFromZumo.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  messagesFromZumo.setOpaque(true);
  messagesFromZumo.addEventHandler(this, "messagesFromZumo_change");
  
  Left = new GButton(this, 11, 169, 80, 30);
  Left.setText("Left");
  Left.setTextBold();
  Left.addEventHandler(this, "Left_click");
  
  Right = new GButton(this, 127, 171, 80, 31);
  Right.setText("Right");
  Right.setTextBold();
  Right.addEventHandler(this, "Right_click");
  
  Forward = new GButton(this, 71, 121, 80, 30);
  Forward.setText("Forward");
  Forward.setTextBold();
  Forward.addEventHandler(this, "Forward_click");
  
  Back = new GButton(this, 69, 225, 80, 30);
  Back.setText("Back");
  Back.setTextBold();
  Back.addEventHandler(this, "Back_click");
  
  Stop = new GButton(this, 285, 290, 100, 30);
  Stop.setText("Stop");
  Stop.setTextBold();
  Stop.addEventHandler(this, "Stop_click");  
  
  Automate = new GButton(this, 285, 255, 100, 30);
  Automate.setText("Automate");
  Automate.setTextBold();
  Automate.addEventHandler(this, "Automate_click");
  
  Room_Left = new GButton(this, 180, 220, 100, 30);
  Room_Left.setText("Room Left");
  Room_Left.setTextBold();
  Room_Left.addEventHandler(this, "Room_Left_click");

  Room_Right = new GButton(this, 390, 220, 100, 30);
  Room_Right.setText("Room Right");
  Room_Right.setTextBold();
  Room_Right.addEventHandler(this, "Room_Right_click");  
  
  scan = new GButton(this, 285, 220, 100, 30);
  scan.setText("Scan");
  scan.setTextBold();
  scan.addEventHandler(this, "Scan_click"); 
  
  calibrate = new GButton(this, 285, 325, 100, 30);
  calibrate.setText("Calibrate");
  calibrate.setTextBold();
  calibrate.addEventHandler(this, "Calibrate_click");
}

// Variable declarations 
// autogenerated do not edit
GTextArea messagesToZumo;  
GTextField messagesFromZumo;

GButton sendMessage;
GButton Left; 
GButton Right; 
GButton Forward; 
GButton Back; 
GButton Stop; 
GButton Automate;
GButton scan;
GButton Room_Left;
GButton Room_Right;
GButton calibrate;

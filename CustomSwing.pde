import java.awt.*;
import java.awt.event.*;
import java.awt.event.ActionListener;
import javax.swing.*;
import processing.awt.PSurfaceAWT;
import java.awt.event.MouseEvent;

class SwingGUI {
  Canvas canvas = (Canvas) surface.getNative();
  JLayeredPane pane = (JLayeredPane) canvas.getParent().getParent();

  void add(PButton _button) {
    pane.add(_button);
  }

  void add(JScrollPane _scrollPane) {
    pane.add(_scrollPane);
  }

  void add(PLabel _label) {
    pane.add(_label);
  }
}

class PButton extends JButton {
  SwingGUI gui;

  PButton(String _name, int _x, int _y, int _w, int _h, ActionListener _actionListener) {
    super();

    gui = new SwingGUI();

    this.setText(_name);
    this.setBounds(_x, _y, _w, _h);
    this.addActionListener( _actionListener );
    gui.add(this);
  }
}

class PTextArea extends JTextArea {
  SwingGUI gui;
  JScrollPane scrollPane;

  PTextArea(int _x, int _y, int _w, int _h) {
    super();

    gui = new SwingGUI();

    this.setLineWrap(true);
    this.setWrapStyleWord(true);
    scrollPane = new JScrollPane(this);
    scrollPane.setBounds(_x, _y, _w, _h);
    gui.add(scrollPane);
  }
}

class PLabel extends JLabel {
  SwingGUI gui;

  PLabel(String _text, int _x, int _y, int _w, int _h) {
    super();

    gui = new SwingGUI();

    this.setText(_text);
    this.setBounds(_x, _y, _w, _h);
    gui.add(this);
  }
}
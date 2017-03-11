# README  
このプログラムはJavaのSwingGUIをProcessingでより手軽に利用できるようにすることをコンセプトとしたものです。  
  
SwingGUIを表示の手間を裏で行う事で、Processingのtext()やellipse()のような書き方で宣言できるようにしました。  
  
このプログラムにおいては、PButton（JButtonを継承したもの）のようにGUIの名前をつけています。  
  
現在は、PButton, PTextArea, PLabelを実装しています。
  
## How to use
### PButton
```processing:PButton.pde
PButton pButton;

void setup(){
 pButton = new PButton("ButtonName", 100, 100, 100, 50, new ActionListener(){
  @Override
  public void actionPerformed(ActionEvent e){
    //println("Button was pressed");
  }
 });
}
```
### PTextArea
```processing:PTextArea.pde
PTextArea pTextArea;

void setup(){
 pTextArea = new PTextArea(100, 100, 200, 100);
}
```
### PLabel
```processing:PLabel.pde
PLabel plabel;

void setup(){
 pLabel = new PLabel("LabelName", 100, 100, 100, 50);
}
```

# README  
このプログラムはJavaのSwingGUIをProcessingでより手軽に利用できるようにすることをコンセプトとしたものです。  
  
SwingGUIを表示の手間を裏で行う事で、Processingのtext()やellipse()のような書き方で宣言できるようにしました。  
  
このプログラムにおいては、PButton（JButtonを継承したもの）のようにGUIの名前をつけています。  
  
現在は、PButton, PTextArea, PLabelを実装しています。
  
## How to use
### PButton
PButton("ボタンの名前", 左上x座標, 左上y座標, 幅, 高さ, 匿名のActionListenerクラス);  
ActionListenerクラスのactionPerformed(ActionEvent e)内にボタン操作時の処理内容を記述  
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
PTextArea(左上x座標, 左上y座標, 幅, 高さ);  
```processing:PTextArea.pde
PTextArea pTextArea;

void setup(){
 pTextArea = new PTextArea(100, 100, 200, 100);
}
```
  
### PLabel
PLabel("表示する文字列", 左上x座標, 左上y座標, 幅, 高さ);  
```processing:PLabel.pde
PLabel plabel;

void setup(){
 pLabel = new PLabel("LabelName", 100, 100, 100, 50);
}
```

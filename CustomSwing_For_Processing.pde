//setup()内でも宣言可能だが、
//PButtonなどの処理で他のCustomSwingのGUI部品を扱えなくなるため、
//ここでそれぞれを宣言することを推奨する
PButton   pButton;
PTextArea pTextArea;
PLabel    pLabel;

void setup() {
  size(300, 500);

  //PButtonはJButtonを継承したもの
  //ActionListenerクラス内のactionPerformed(ActionEvent e)は、
  //ボタンが押された時に一度だけ実行されるメソッド
  //記述方法: MyButton( "ボタン名", 左上x座標, 左上y座標, 幅, 高さ, イベント駆動のActionListenerクラス )

  pButton   = new PButton("hoge", 50, 200, 200, 100, new ActionListener() {
    @Override
    public void actionPerformed(ActionEvent e) {
      //ここにボタンを押した時の処理内容を記述
    }
  });


  //PTextAreaはJTextAreaを継承したもの
  //記述方法:  = new PTextArea(左上x座標, 左上y座標, 幅, 高さ)
  
  pTextArea = new PTextArea(50, 50, 200, 150);


  //PTextLabelはJLabelを継承したもの
  //記述方法: new PLabel("ラベル文字", 左上x座標, 左上y座標, 幅, 高さ)
  
  pLabel    = new PLabel("fuga", 50, 300, 200, 100);
}

void draw() {
}
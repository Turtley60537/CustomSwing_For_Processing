/*
 * これはCustomSwing_For_Processingのサンプルプログラムです。
 * ボタンpButtonを押すと、
 * テキストエリアpTextAreaの記述内容をラベルpLabelに表示します。
 * また、円が表示/非表示が切り替わります。
 */

PButton   pButton;
PTextArea pTextArea;
PLabel    pLabel;

boolean ellipVisible = false;

void setup() {
  size(400, 500);

  //記述方法: MyButton( "ボタン名", 左上x座標, 左上y座標, 幅, 高さ, イベント駆動のActionListenerクラス )
  pButton = new PButton("hoge", 50, 210, 200, 100, new ActionListener() {
    @Override
    public void actionPerformed(ActionEvent e) {
      
      //ここにボタンを押した時の処理内容を記述
      pLabel.setText( pTextArea.getText() );
      pTextArea.setText("");
      ellipVisible = !ellipVisible;
      fill(random(255), random(255), random(255));
      
    }
  });

  //記述方法:  = new PTextArea(左上x座標, 左上y座標, 幅, 高さ)
  pTextArea = new PTextArea(50, 50, 200, 150);

  //記述方法: new PLabel("ラベル文字", 左上x座標, 左上y座標, 幅, 高さ)
  pLabel = new PLabel("fuga", 50, 320, 200, 100);
}

void draw() {
  background(100);
  if (ellipVisible) {
    ellipse(320, 260, 100, 100);
  }
}
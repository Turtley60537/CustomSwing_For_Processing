
PButton   pButton;
PTextArea pTextArea;
PLabel    pLabel;

String str = "";

void setup() {
  size(300, 500);

  //MyButtonはJButtonを継承したもの
  //例: MyButton("ボタン名", 左上x座標, 左上y座標, 幅, 高さ, ActionListener)
  pButton = new PButton("hoge", 50, 200, 200, 100, new ActionListener() {
    @Override
    public void actionPerformed(ActionEvent e) {
      //ここにボタンを押した時の処理内容を記述
    }
  }
  );

  //MyTextAreaはJTextAreaを継承したもの
  //記述方法: MyTextArea(左上x座標, 左上y座標, 幅, 高さ)
  pTextArea = new PTextArea(50, 50, 200, 150);

  //MyTextLabelはJLabelを継承したもの
  //記述方法: new PLabel("ラベル文字", 左上x座標, 左上y座標, 幅, 高さ)
  pLabel = new PLabel("fuga", 50, 300, 200, 100);
}


void draw() {
}
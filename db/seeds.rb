# -*- coding: utf-8 -*-
ActiveRecord::Base.connection.execute("TRUNCATE TABLE helps")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE questions")


Help.create([
    { title: "ログイン方法", body: "下部のタブから「設定」画面を開くと，twitterログイン画面を開くことができます．ログインボタンを押してもログインできない場合には，お問い合わせください．" , image: "helps/settings.png"},
    { title: "リストの編集方法", body: "下部のタブから「リスト」画面を開き，右上の編集ボタンを押します．すると左上に「＋」マークが出てくるので，それをタップすると，ログインしているユーザーが所持しているリスト一覧が表示されます．そこからリストを選択し，左上の「完了」をタップすることで「リスト」画面の一覧に表示されるようになります．", image: "helps/list.png"},
    {title: "リスト画面の操作方法", body: "任意のリストを選択するとタイムライン表示になります．そのままスワイプすると次のリストが表示されます．この表示順は，リスト画面に表示されたリスト一覧の順番に沿っています．", image: "helps/list1.png"}
])

Question.create([
    { title: "通知が来ない場合には？", answer: "iPhone本体の設定から通知を許可してください．それでも来ない場合は，Whalebirdの設定から，通知を一度オフにして，再びオンに戻してみてください．"},
    { title: "複数アカウントの運用をしたい", answer: "マルチアカウントには対応しておりません．別のアカウントでサインインしたい場合は，一度設定画面からアカウント情報を削除してください．"},
    { title: "Userstreamを使いたい", answer: "設定からオンにすることができます．通信量が多くなるため，Wifi環境を推奨しています．"}
])

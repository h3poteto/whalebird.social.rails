ActiveRecord::Base.connection.execute("TRUNCATE TABLE helps")

Help.create(
  [
    {
      title_ja: "ログイン方法",
      title_en: "Login",
      body_ja: "設定タブを開くと、アカウント設定項目があるので、アカウントボタンを押すと、twitterログイン画面を開くことができます。ログイン後、プロフィールボタンから自身のプロフィールを確認できます。ログインボタンを押してもログインできない場合には、お問い合わせください。",
      body_en: "Open Settings tab, and there is account setting, so please push account button and login twitter. After login, you can confirm your profile in profile button. If you can not login, please contact us.",
      image: "helps/settings.png"
    },
    {
      title_ja: "リストの編集方法",
      title_en: "Customize List",
      body_ja: "下部のタブから「リスト」画面を開き、右上の編集ボタンを押します。すると左上に「＋」マークが出てくるので、それをタップすると、ログインしているユーザーが所持しているリスト一覧が表示されます。そこからリストを選択し、左上の「完了」をタップすることで「リスト」画面の一覧に表示されるようになります。",
      body_en: "Open List tab, and push edit button. Please push + button which is in the upper left, then your all lists are displayed. And select a list which you want to add to List page. After push done button, the list is displayed in List page.",
      image: "helps/list.png"
    },
    {
      title_ja: "リスト画面の操作方法",
      title_en: "Switch List",
      body_ja: "任意のリストを選択するとタイムライン表示になります。そのままスワイプすると次のリストが表示されます。この表示順は、リスト画面に表示されたリスト一覧の順番に沿っています。",
      body_en: "Select a list in List page, a list timeline is displayed. Please swipe motion to show next list. This order of list is in order of display.",
      image: "helps/list1.png"
    },
    {
      title_ja: "ダイレクトメッセージの送信",
      title_en: "Direct Message",
      body_ja: "DMタブから受信したダイレクトメッセージの一覧が見られます。返信したいメッセージを選択することで返信することができます。新規に送信することはできません。",
      body_en: "Open DirectMessage tab, you can see messages which you received. To reply message, please select a message which you want to reply. You can not send a new message, not a reply.",
      image: "helps/direct_message.png"
    },
    {
      title_ja: "フォロー/アンフォロー",
      title_en: "Follow/Unfollow",
      body_ja: "ユーザーのプロフィール画面からフォローやフォロー解除が行えます。非公開ユーザーについては、フォローリクエストを送信します。",
      body_en: "You can follow and unfollow in user's profile page. If the user is protected user, you can send follow request.",
      image: "helps/profile.png"
    },
    {
      title_ja: "通知が来ない場合には？",
      title_en: "Push Notification does not come",
      body_ja: "iPhone本体の設定から通知を許可してください。それでも来ない場合は、Whalebirdの設定から、通知を一度オフにして、再びオンに戻してみてください。",
      body_en: "Please accept push notification for Whalebird in your iPhone setting. If push notification does not come after accept, please turn off and turn on push notification in Whalebird setting.",
      image: "helps/notification_settings.png"
    },
    {
      title_ja: "Userstreamの使用",
      title_en: "Userstream",
      body_ja: "設定タブの下の方にUserstreamの設定があります。ここからUserstreamをオンにします。このときiPhone本体のTwitterアカウントが設定されている必要があります。",
      body_en: "There is userstream setting in Setting tab. Please turn on userstream. It is necessary that twitter account setting in your iPhone when you use userstream.",
      image: "helps/userstream_settings.png"
    },
    {
      title_ja: "複数端末での使用",
      title_en: "Multiple Devices",
      body_ja: "基本的に複数端末での使用は対応しておりません。ログインやタイムラインの取得操作は可能ですが、通知に対応しておらず、最後にログイン処理をした端末にのみ通知が行く状態になっております。",
      body_en: "Whalebird does not correspond to use with multiple devices. You can login and get timeline, but it does not support push notification for multiple devices. So, I do not officially support it."
    }
  ]
)

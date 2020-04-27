
# Comicrage概要
![image](https://user-images.githubusercontent.com/61701440/80335597-b36a2400-888f-11ea-9232-78c59f76e96f.png)

<br></br>
## 本番環境URL
http://18.180.93.104/

## テストユーザー
メールアドレス　test@gmail.com  
パスワード　　　aaaa3333
<br></br>
<br></br>
# 制作経緯
　漫画は他の蔵書と違い、1つのタイトルで数十冊と増えていきます。漫画の情報、所持している冊数を確認でき、タイトルで検索や出版社・雑誌ごとに管理できたら便利だと考え、制作するきっかけとなりました。
<br></br>
<br></br>
# 使用技術(開発環境)
- haml&Sass
- JavaScript/jQuery
- Ruby
- Ruby on Rails
- MySQL
- AWS
<br></br>
<br></br>
# 実装内容
- ユーザー登録
- 登録一覧表示
- 漫画登録
- 登録内容詳細表示
- 登録内容編集、削除
- タイトル別漫画検索
- 雑誌別漫画検索
<br></br>
<br></br>
## ユーザー登録
![image](https://user-images.githubusercontent.com/61701440/80341668-d7ccfd00-889d-11ea-864d-ecbf65994f16.png)

gemファイルの「devise」を導入し、ニックネーム、メールアドレス、パスワードにてユーザー登録を実装しています。
<br></br>
## 登録内容一覧表示
![image](https://user-images.githubusercontent.com/61701440/80342214-b7517280-889e-11ea-8910-9289c91e1622.png)

ログイン後、トップページにて登録した漫画のタイトルと写真が表示されます。右下の赤いボタンにて漫画の登録ができます。
<br></br>
## 漫画登録
![image](https://user-images.githubusercontent.com/61701440/80342757-ac4b1200-889f-11ea-9f82-1ffd89ca1801.png)

タイトル、漫画家名、出版社/雑誌、通常価格、冊数、作品内容を登録できます。必須項目のタイトル、出版社/雑誌には入力がないと登録されないようバリデーションをかけています。  
カテゴリにはgemファイルの「ancestry」を導入しており、出版社を選択すると雑誌の選択項目が表示されるようJSにて実装しています。  
左上（カメラ）部分をクリックすると画像を選択できます。画像は投稿する前にプレビュー表示されます。
<br></br>
## 登録内容詳細表示
![image](https://user-images.githubusercontent.com/61701440/80344598-cf2af580-88a2-11ea-8b08-42ed55ef1f06.png)

登録した漫画の情報を確認できます。下のボタンにてそれぞれ編集、削除が可能です。
<br></br>
## 登録内容編集、削除
### 編集
![image](https://user-images.githubusercontent.com/61701440/80345112-99d2d780-88a3-11ea-9fb6-a18129f77e69.png)

登録されているタイトル、漫画家名、出版社/雑誌、通常価格、冊数、作品内容を編集できます。登録時同様、必須項目のタイトル、出版社/雑誌には入力がないと登録されないようバリデーションをかけています。

### 削除
![image](https://user-images.githubusercontent.com/61701440/80345461-1b2a6a00-88a4-11ea-9ece-bcf53ab07fff.png)

登録内容を削除できます。削除を押した際、モーダルウィンドウにて確認を行うよう実装しています。
<br></br>
## タイトル別漫画検索
![image](https://user-images.githubusercontent.com/61701440/80345786-a277dd80-88a4-11ea-9d42-2b3f0b9db29c.png)

右上の検索フォームにタイトルを入力し、虫眼鏡を押すことによって検索できます。
<br></br>
## 雑誌別漫画検索
![image](https://user-images.githubusercontent.com/61701440/80346177-4b263d00-88a5-11ea-85ea-1717116b79a0.png)

![image](https://user-images.githubusercontent.com/61701440/80346191-4f525a80-88a5-11ea-8ef5-2f769968cd58.png)

出版社で探すを押し、雑誌名をクリックすることによって、登録した雑誌毎に検索することができます。
<br></br>
<br></br>
# 今後実装したい機能
- 並び替え、絞り込み機能
- お気に入り機能
- マイページ
- レスポンシブ対応
<br></br>
<br></br>
# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :books

## booksテーブル
|Column|Type|Options|
|------|----|-------|
|title|string||
|comment|text||
|image|text||
|writer|string||
|price|integer||
|stock|integer||
|user-id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :category

## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|company|string||
|ancestry|||
### Association
- has_many :books
- has_ancestry

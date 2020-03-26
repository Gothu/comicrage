# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# comicrage DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nikename|string|null: false|
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

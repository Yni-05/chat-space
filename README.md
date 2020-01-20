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

## usersテーブル

｜Column｜Type｜Option|
|------|----|------|
|email|string|null: falise|
|password|string|null: false|
|nickname|string|null: false|

## Associtation
_ has_many :messages
_ has_many :groups, through: groups_users


# messagesテーブル
｜Column｜Type｜Option|
|------|----|------|
|message|text|
|image|string|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

## Associtation
_ has_many :groups, through: groups_messages


# groupsテーブル
｜Column｜Type｜Option|
|------|----|------|
|name|string|null: false|

## Association
_ has_many :users, through: groups_users


# groups_usersテーブル
｜Column｜Type｜Option|
|------|----|------|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false|

## Association
_ belongs_to :group
_ belongs_to :user


# groups_messagesテーブル
｜Column｜Type｜Option|
|------|----|------|
|group_id|integer|null: false, foreign_key: true|
|messages_id|integer|null: false, foreign_key: true|

## Association
_ belongs_to :group
_ belongs_to :message

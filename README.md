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
_ has_many :tags
_ has_many :photos


# messagesテーブル
｜Column｜Type｜Option|
|------|----|------|
|message|text|null: false|
|image|string|
|groups_id|integer|null: false|
|users_id|integer|null: false|

## Associtation
_ belongs_to :user
_ has_many :groups
_ has_many :photos


# tagsテーブル
｜Column｜Type｜Option|
|------|----|------|
|name|text|null: false|
|tags_id|integer|null: false, foreign_key: true|

## Associtation
_ has_many :photos_tags
_ has_many :photos, through: photos_tags
_ belongs_to :user


# photosテーブル
｜Column｜Type｜Option|
|------|----|------|
｜name｜text|null: false|
|location|text|null: false|
|photos_id|integer|null: false, foreign_key: true|

## Association
_ has_many :photo_tags
_ has_many :tags, through: photos_tags
_ belongs_to :user


# photos_tagsテーブル
｜Column｜Type｜Option|
|------|----|------|
|tags_id|integer|null: false, foreign_key: true|
|photos_id|integer|null: false, foreign_key: true|

## Association
_ belongs_to :photo
_ belongs_to :tag


# groupsテーブル
｜Column｜Type｜Option|
|------|----|------|
|name|text|null: false|
|groups_id|integer|null: false, foreign_key: true|

## Association
_ has_many :photos
_ has_many :tags
_ belongs_to :user


# groups_photosテーブル
｜Column｜Type｜Option|
|------|----|------|
|groups_id|integer|null: false, foreign_key: true|
|photos_id|integer|null: false, foreign_key: true|

## Association
_ belongs_to :group
_ belongs_to :photo

# groups_tagsテーブル
｜Column｜Type｜Option|
|------|----|------|
|groups_id|integer|null: false, foreign_key: true|
|tags_id|integer|null: false, foreign_key: true|

## Association
_ belongs_to :group
_ belongs_to :tag


# groups_usersテーブル
｜Column｜Type｜Option|
|------|----|------|
|groups_id|integer|null: false, foreign_key: true|
|users_id|integer|null: false|

## Association
_ belongs_to :group
_ belongs_to :user
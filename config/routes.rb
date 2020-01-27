Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "groups#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
    #index: 投稿されたメッセージの一覧表示 & メッセージの入力ができる
    #create: メッセージの保存を行う
  end
end

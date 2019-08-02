Rails.application.routes.draw do
  devise_for :users
  root  'tweets#index'                       #ルートパスの指定
  get 'tweets' => 'tweets#index'
  get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
  post  'tweets'      =>  'tweets#create'    #ツイート投稿機能
  delete  'tweets/:id'  => 'tweets#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

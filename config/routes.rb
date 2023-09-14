Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'posts/top' => 'posts#top'
  get 'posts/food' => 'posts#food'
  get 'posts/look' => 'posts#look'
  get 'posts/enjoy' => 'posts#enjoy'
  get 'posts/miru' => 'posts#miru'


  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
  root 'posts#index'

  Rails.application.routes.draw do
    resources :tweets
  end

 
 resources :perfumes



end

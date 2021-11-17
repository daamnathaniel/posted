Rails.application.routes.draw do
  devise_for :users
  get 'article/index'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'comments/create'
  resources :articles do
    resources :comments
  end

  root to: 'articles#index'
end

Rails.application.routes.draw do
  get 'comments/create'
  resources :articles do
    resources :comments
  end

  root to: 'articles#index'
end

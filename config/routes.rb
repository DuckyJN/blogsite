Rails.application.routes.draw do
  devise_for :users
  root 'users/articles#index'
  scope module: 'users' do
    resources :articles
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "registrations"
  }

  devise_scope :user do
    get "/get_in", to: "registrations#new", as: :sign_up
    get "/login", to: "sessions#new", as: :sign_in
    delete "/sign_out", to: "devise/sessions#destroy"
  end

  root 'articles#index'
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

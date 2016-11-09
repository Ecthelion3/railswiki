Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'

  resources :pages
  get "pages/:id/history" => "pages#history"
end

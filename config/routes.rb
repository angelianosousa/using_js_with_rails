Rails.application.routes.draw do
  resources :credit_cards, only: %i[index create]
  get "/credit_cards/:id" => 'credit_cards#show_info'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

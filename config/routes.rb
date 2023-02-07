Rails.application.routes.draw do
  root to: "decks#index"

  resources :decks
  resources :cards
  resources :card_items

  # devise_for :users, controllers: { sessions: 'users/sessions', resgistrations: 'users/registrations' }
end

Rails.application.routes.draw do
  resources :cocktail_ingredients
  resources :ingredients
  resources :bar_cocktails
  resources :bars
  resources :cocktails

  post "/create_drink", to: "cocktails#create_drink", as: "create_amount"
  get "/edit_drink", to:"cocktails#edit_drink", as: "amount"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

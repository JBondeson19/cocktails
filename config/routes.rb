Rails.application.routes.draw do
  resources :cocktail_ingredients
  resources :ingredients
  resources :bar_cocktails
  resources :bars
  resources :cocktails

  # (edit)
  # create -> redirects to add_amounts -> patches, then redirects to show
  get "cocktails/:id/add_amounts", to: "cocktails#add_amounts", as: "add_amounts"
  #get "cocktails/:id/add_amounts", to: "cocktails#add_amounts", as "add_amounts"
  # patch "cocktails/:id/"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

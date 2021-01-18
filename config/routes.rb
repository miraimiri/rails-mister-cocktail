Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  # Cocktails
  resources :cocktails do
    # Doses (nested)
    resources :doses, only: [:index, :new, :create]
  end
  # Ingredients
  resources :doses, only: [:show, :edit, :update, :destroy]
  resources :ingredients, only: [:index, :show]
end

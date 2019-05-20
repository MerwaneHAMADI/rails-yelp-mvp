Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :reviews, path_names: { create: 'restaurant_reviews'}
  end
  # resources :reviews, only: [:create]
end

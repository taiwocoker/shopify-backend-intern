Rails.application.routes.draw do
  root to: "images#welcome"
  resources :images, only: %i[create show index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

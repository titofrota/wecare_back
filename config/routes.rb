Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :positions
    resources :pronouns
    resources :values
  end

  namespace :v1 do
    resources :users
    resources :recognitions
  end
end

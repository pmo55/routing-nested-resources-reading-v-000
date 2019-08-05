Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show] do
  resources :posts, only: [:index, :show]
  end

resources :posts only: [:index, :show, :update, :edit, :create, :new]
  root 'posts#index'

end


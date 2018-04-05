Rails.application.routes.draw do
  resources :identities
  resources :editor, only: [:index] do
    collection do
      match 'search' => 'editor#search', via: [:get, :post], as: :search
    end
  end
  get 'editor/index'
  get 'dashboard/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
  }

end

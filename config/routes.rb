Rails.application.routes.draw do
  get 'editor/index'

  get 'dashboard/index'

  resources :identities, only: [:index, :show] do
    get :filter, on: :collection
    get :list, on: :collection
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
  }

end

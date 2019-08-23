Rails.application.routes.draw do


  get 'avatars/create'
  get 'users/show'
  #get 'events/new'

  devise_for :users






  root to: 'events#index'
  #resources :users, only: [:show]



  resources :users, only: [:show] do
    resources :avatars, only: [:create]

    end


    resources :events do
      resources :avatars, only: [:create]

    end
    resources :charges


  resources :participations


  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

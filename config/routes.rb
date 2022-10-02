Rails.application.routes.draw do



  # get 'users/index'
  root 'patients#index'
  # resources :patients
  # get "/patients/index",to:"patients#index"
  get""
  post "/patients",to:"patients#create"
  # root 'receptionist#index'
  # devise_scope :user do
  #   # Redirests signing out users back to sign-in
  #   # get "users", to: "devise/sessions#new"
  #
  # end
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

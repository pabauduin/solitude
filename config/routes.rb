Rails.application.routes.draw do

  get 'profiles/show'
  devise_for :users
  root to: 'pages#home'
  resources 'escorts' do
    resources 'bookings', only: [:destroy, :create]
  end
  resources 'profiles', only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

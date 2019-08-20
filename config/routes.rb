Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources 'escorts' do
    resources 'bookings', only: [:index, :show, :delete]
  end
  resources 'users', only: [:show, :delete, :new, :create, :edit, :update] do
    resources 'bookings', only: [:index, :delete, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  get 'escorts/index'
  get 'escorts/show'
  get 'escorts/new'
  get 'escorts/create'
  get 'escorts/edit'
  get 'escorts/update'
  get 'escorts/delete'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/delete'
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

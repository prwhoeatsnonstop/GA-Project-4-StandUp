Rails.application.routes.draw do
  get 'onepage/index'
  resources :boards
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/react' => 'onepage#index'
  get '/' => 'boards#landingpage'

end
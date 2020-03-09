Rails.application.routes.draw do
  get 'onepage/index'
  resources :boards
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/react' => 'onepage#index'
  get '/' => 'boards#landingpage'

  #a catchall route that matches any of the potential routes that might come from our React app, and funnel them to our onepage_controller#index action. This being the action that renders our React application
  match '*path', to: 'boards#index', via: :all


end
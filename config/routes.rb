Rails.application.routes.draw do
  get 'onepage/index'
  resources :boards
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/react' => 'onepage#index'
  get '/' => 'boards#landingpage'
  get '/search' => 'boards#search'

  get '/archives' => 'boards#archive', as: 'archive'



# NEW ROUTES FOR AFTER ADD & EDIT TO REDIRECT BACK TO INDEX PAGE INSTEAD OF SCAFFOLDED ONES
  resources :boards do
      get :allBoardsList, :singleBoard
      post :createBoard
      put :editBoard
      delete :deleteBoard
    end

  get 'list/boards/' => 'boards#list', as: :allBoardsList
  post 'list/boards/:id' => 'boards#createBoard'
  get 'list/boards/:id' => 'boards#singleBoard', as: :singleBoard
  patch 'list/boards/:id' => 'boards#editBoard'
  delete 'list/boards/:id' => 'board#deleteBoard'

  #a catchall route that matches any of the potential routes that might come from our React app, and funnel them to our onepage_controller#index action. This being the action that renders our React application
  match '*path', to: 'boards#index', via: :all


end
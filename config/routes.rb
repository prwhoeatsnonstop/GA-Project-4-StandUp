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


#   Rails.application.routes.draw do
#   resources :foods do
#     collection do
#       get :favFoodList
#       post :favFood
#       delete :deleteFood
#     end
#   end
#   resources :foods, only: [:new],
#     :path => "owner/food/:restaurant_id", as: :newItem

#   resources :restaurants do
#     collection do
#       get :list, :individualFavRestaurant, :ownerRestaurant
#       delete :deleteRestaurant
#       post :favRestaurant
#     end
#   end
#   devise_for :owners
#   devise_for :users
#   root 'onepage#index'
#   #users
#   get 'favlist/restaurants/' => 'restaurants#list', as: :favRestaurantList
#   get 'favlist/restaurants/:id' => 'restaurants#individualFavRestaurant', as: :individualFavRestaurant
#   get 'favlist/foods/' => 'foods#list', as: :favFoodList
#   post 'favlist/foods/:id' => 'foods#favFood'
#   delete 'favlist/foods/:id' => 'foods#deleteFood'

#   post 'favlist/restaurants/:id' => 'restaurants#favRestaurant'
#   delete 'favlist/restaurants/:id' => 'restaurants#deleteRestaurant'


#   #owners
#   get 'owner/restaurants' => 'restaurants#ownerRestaurant', as: :ownerRestaurant

#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
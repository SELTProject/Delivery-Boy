Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: "custom_devise/registrations"}
  #devise_for :users, :controllers => {:registrations => "custom_devise/registrations"}
  #devise_for :users, :controllers => { registrations: 'registrations' }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root :to => 'preorder#index'
  root :to => redirect('/home')
  resources :users
  #resources :businessdetails
  #resources :driverdetails
  match '/home', to: 'visitors#index', via: :get
  match '/about', to: 'visitors#about', via: :get
  match '/contact', to: 'visitors#contact', via: :get
  
  #match "/:space_type/:id", :to => "spaces#show", :as => :space_type

  get '/businessdetails/new' => 'businessdetails#new', as: 'new_businessdetail'
  post '/businessdetails' => 'businessdetails#create', as: 'businessdetails'
  get '/businessdetails/edit' => 'businessdetails#edit', as: 'edit_businessdetail'
  put '/businessdetails' => 'businessdetails#update', as: 'businessdetail'
  patch '/businessdetails' => 'businessdetails#update'

  get '/driverdetails/new' => 'driverdetails#new', as: 'new_driverdetail'
  post '/driverdetails' => 'driverdetails#create', as: 'driverdetails'
  get '/driverdetails/edit' => 'driverdetails#edit', as: 'edit_driverdetail'
  put '/driverdetails' => 'driverdetails#update', as: 'driverdetail'
  patch '/driverdetails' => 'driverdetails#update'

  get '/customerhires/new' => 'customerhires#new', as: 'new_customerhire'
  post '/customerhires' => 'customerhires#create', as: 'customerhires'

  get '/displayorders/display' => 'displayorders#display', as: 'display_displayorder'
 # get '/about' => 'visitor#about', as: 'website_about'


  #match '/login', to: 'sessions#new', via: :get
  #match '/login_create', to: 'sessions#create', via: :post
  #match '/logout', to: 'sessions#destroy', via: :delete

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

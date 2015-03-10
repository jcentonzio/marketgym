Rails.application.routes.draw do

  
  get 'carts/show'

  get 'admin/index'

  get 'home/show'

  get 'home/index'

  resources :accesses
  resources :admin
  resources :directories
  resources :orders

  #devise_for :customers, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  #devise_for :customers, controllers: { registrations: "registrations"}

  devise_for :customers, controllers: {registrations: "customer/registrations"}
  devise_for :users,  controllers: { registrations: "registrations"}


  #Dashboard
  get 'profile_company' => 'merchant#company'
 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
   
  get 'dashboard' => 'merchant#index', as: :merchant

  get 'show/:id(/purchase/:access_id)' => 'home#show', as: :product  

  
  get 'purchase/checkout/cart' => 'carts#cart', as: :cart
  get 'purchase/checkout/:id' => 'carts#show', as: :purchase
  get 'purchase/checkout/payment/:id' => 'carts#payment', as: :payment
   #match "purchase/checkout/:id" => "carts#show", :as => :purchase, :via => [:get], :constraints => { :name => /[A-Za-z]/ }
   
   get 'accesses/new/:id' => 'accesses#new'

   

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

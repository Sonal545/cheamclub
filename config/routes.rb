Rails.application.routes.draw do
  
  
  
  devise_for :members
  devise_for :views
  #match "lawns" => "bookingalawn#lawnsdisplay", via: :get
  match "/display_booking" => "bookingalawn#display_booking", via: :get

  
  resources :reserves

  resources :lawns

  resources :pgms

  resources :newsletts

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'ccbc/home'

  get 'ccbc/abouttheclub'

  get 'ccbc/jointheclub'

  get 'ccbc/whatyouneed'

  get 'ccbc/clubmatter'

  get 'ccbc/howtogetthere'
   get 'ccbc/linkstosite'
 # match '/bookalawn', :to => 'booking#bookalawn', via: :get
  #get  'booking' => 'booking#index'
 # match "/show_booking" => "booking#show_booking", via: :get
  #match "bookalawn/:id" => "booking#bookalawn", via: :post
  
 
 # match "booknow/:id" => "booking#booknow", via: :get
  root :to => 'ccbc#home'
  match '/abouttheclub', :to => 'ccbc#abouttheclub', via: :get
  match '/jointheclub', :to => 'ccbc#jointheclub', via: :get
  match '/whatyouneed', :to => 'ccbc#whatyouneed', via: :get
  match '/clubmatter', :to => 'ccbc#clubmatter', via: :get
  match '/howtogetthere', :to => 'ccbc#howtogetthere', via: :get
  match '/linkstosite', :to => 'ccbc#linkstosite', via: :get 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

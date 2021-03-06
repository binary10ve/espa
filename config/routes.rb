Espa::Application.routes.draw do

  devise_for :users

  resources :line_items

  resources :orders

  resources :roles_users

  resources :memberships

  resources :campaigns

  namespace :admin do
    resources :attendances
    resources :job_categories
    resources :staff_roles
    resources :staffs
    resources :roles
    resources :jobs
    resources :rate_cards
    resources :inventories
  end

  resources :inventories
  resource :pos do
    get :new_order
  end
  
  get 'sales/new' => 'pos#new_order'
  get '' => 'marketing#show'

  
  resources :how_mets

  resources :services

  resources :appointments

  resources :clients

  resources :discounts

  root to: "appointments#index"
  authenticated :user do
    root to: "appointments#show", as: :authenticated_root, via: :get
  end
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

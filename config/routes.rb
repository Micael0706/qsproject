Rails.application.routes.draw do

  resources :home
  resources :meis do 
    resources :comments
  end
  resources :layouts
  root 'home#index'
  get 'home/index' => 'home#index'
  get 'comments/new' => 'comments#new'
  get '/comments/1' => 'comments#show', :id => '1'
  get '/comments' => 'comments#index'
  get 'comments/1/edit' => 'comments#edit'
  post '/comments' => 'comments#create'
  put '/comments/1' => "comments#update", :id => "1"
  patch '/comments/1' => "comments#update", :id => "1"
  delete '/comments/1' => "comments#destroy", :id => "1"
  
  post '/meis/search_tmdb'
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
  #     #     resources :sales do
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

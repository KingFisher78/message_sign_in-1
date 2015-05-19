Rails.application.routes.draw do

  # Routes for the Response resource:
  # CREATE
  get '/responses/new',      :controller => 'responses', :action => 'new',    :as => 'new_response'
  post '/responses',         :controller => 'responses', :action => 'create', :as => 'responses'

  # READ
  get '/responses',          :controller => 'responses', :action => 'index'
  get '/responses/:id',      :controller => 'responses', :action => 'show',   :as => 'response'

  # UPDATE
  get '/responses/:id/edit', :controller => 'responses', :action => 'edit',   :as => 'edit_response'
  patch '/responses/:id',    :controller => 'responses', :action => 'update'

  # DELETE
  delete '/responses/:id',   :controller => 'responses', :action => 'destroy'
  #------------------------------

  devise_for :users
  root to: "posts#index"
  # Routes for the User resource:
  # CREATE
  get '/users/new',      :controller => 'users', :action => 'new',    :as => 'new_user'
  post '/users',         :controller => 'users', :action => 'create', :as => 'users'

  # READ
  get '/users',          :controller => 'users', :action => 'index'
  get '/users/:id',      :controller => 'users', :action => 'show',   :as => 'user'

  # UPDATE
  get '/users/:id/edit', :controller => 'users', :action => 'edit',   :as => 'edit_user'
  patch '/users/:id',    :controller => 'users', :action => 'update'

  # DELETE
  delete '/users/:id',   :controller => 'users', :action => 'destroy'
  #------------------------------

  # CREATE
  get("/posts/new", {:controller => "posts", :action => "new"})
  get("/create_post", {:controller => "posts", :action => "create"})

  # READ
  get("/posts/:id", {:controller => "posts", :action => "show", :as => "post"})
  get("/posts/", {:controller => "posts", :action => "index", :as => "posts"})

  # UPDATE
  get("/posts/:id/edit", {:controller => "posts", :action => "edit"})
  get("/update_post/:id", {:controller => "posts", :action => "update"})

  # DESTROY
  get("/destroy_post/:id", {:controller => "posts", :action => "destroy"})


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

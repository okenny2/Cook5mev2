Rails.application.routes.draw do
  devise_for :users
  # Routes for the Testimonial resource:
  # CREATE
  get "/testimonials/new", :controller => "testimonials", :action => "new"
  post "/create_testimonial", :controller => "testimonials", :action => "create"

  # READ
  get "/testimonials", :controller => "testimonials", :action => "index"
  get "/testimonials/:id", :controller => "testimonials", :action => "show"

  # UPDATE
  get "/testimonials/:id/edit", :controller => "testimonials", :action => "edit"
  post "/update_testimonial/:id", :controller => "testimonials", :action => "update"

  # DELETE
  get "/delete_testimonial/:id", :controller => "testimonials", :action => "destroy"
  #------------------------------

  # Routes for the Hotel resource:
  # CREATE
  get "/hotels/new", :controller => "hotels", :action => "new"
  post "/create_hotel", :controller => "hotels", :action => "create"

  # READ
  get "/hotels", :controller => "hotels", :action => "index"
  get "/hotels/:id", :controller => "hotels", :action => "show"

  # UPDATE
  get "/hotels/:id/edit", :controller => "hotels", :action => "edit"
  post "/update_hotel/:id", :controller => "hotels", :action => "update"

  # DELETE
  get "/delete_hotel/:id", :controller => "hotels", :action => "destroy"
  #------------------------------

  "hotels#index"

  # Routes for the Dish resource:
  # CREATE
  get "/dishes/new", :controller => "dishes", :action => "new"
  post "/create_dish", :controller => "dishes", :action => "create"

  # READ
  get "/dishes", :controller => "dishes", :action => "index"
  get "/dishes/:id", :controller => "dishes", :action => "show"

  # UPDATE
  get "/dishes/:id/edit", :controller => "dishes", :action => "edit"
  post "/update_dish/:id", :controller => "dishes", :action => "update"

  # DELETE
  get "/delete_dish/:id", :controller => "dishes", :action => "destroy"
  #------------------------------

  # Routes for the Diet resource:
  # CREATE
  get "/diets/new", :controller => "diets", :action => "new"
  post "/create_diet", :controller => "diets", :action => "create"

  # READ
  get "/diets", :controller => "diets", :action => "index"
  get "/diets/:id", :controller => "diets", :action => "show"

  # UPDATE
  get "/diets/:id/edit", :controller => "diets", :action => "edit"
  post "/update_diet/:id", :controller => "diets", :action => "update"

  # DELETE
  get "/delete_diet/:id", :controller => "diets", :action => "destroy"
  #------------------------------

  # Routes for the Cook resource:
  # CREATE
  get "/cooks/new", :controller => "cooks", :action => "new"
  post "/create_cook", :controller => "cooks", :action => "create"

  # READ
  get "/cooks", :controller => "cooks", :action => "index"
  get "/cooks/:id", :controller => "cooks", :action => "show"

  # UPDATE
  get "/cooks/:id/edit", :controller => "cooks", :action => "edit"
  post "/update_cook/:id", :controller => "cooks", :action => "update"

  # DELETE
  get "/delete_cook/:id", :controller => "cooks", :action => "destroy"
  #------------------------------

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

OnlineReparation::Application.routes.draw do
  
  match "membercenter/update" => "membercenter#update"
  
  match "register/register" => "register#register"
  
  match "/welcome/submitsuggestions" => "welcome#submitsuggestions"
  
  get "/welcome/show_news_details"
  
  get "/welcome/show_announcement_details"
  
  get "managercenter/accept_work"
  
  get "reparation/reparationindex"
  
  get "reparation/sublocation"

  get "managercenter/managerindex"

  get "managercenter/materials"

  get "managercenter/messages"

  get "managercenter/repaired"
  
  get "managercenter/informations"

  get "membercenter/memberindex"
  
  get "welcome/index"
  
  get "welcome/reparations"
  
  get "welcome/materials"
  
  get "welcome/suggestions"

  get "managercenter/add_material"
  
  get "managercenter/delete_material"
  
  get "managercenter/save_material"
  
  get "managercenter/save_news"
  
  get "managercenter/save_announcement"
  
  get "managercenter/delete_news"
  
  get "managercenter/delete_announcement"
  
  get "managercenter/send_worker"
  
  get "managercenter/mywork"
  
  root :to => "welcome#index"
  match "login" => "login#login"
  match "tologin" => "login#tologin"
  match "logout" => "login#logout"
  match "register" => "register#register"
  match "toregister" => "register#toregister"
  match "reparation/processapply" => "reparation#processapply"
  match "managercenter/save_accendant" => "managercenter#save_accendant"
  match "managercenter/accendants" => "managercenter#accendants"
  match "managercenter/add_accendant" => "managercenter#add_accendant"
  match "managercenter/delete_accendant" => "managercenter#delete_accendant"

  resources :users, :reparation_informations
  
# The priority is based upon order of creation:
# first created -> highest priority.

# Sample of regular route:
#   match 'products/:id' => 'catalog#view'
# Keep in mind you can assign values other than :controller and :action

# Sample of named route:
#   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
# This route can be invoked with purchase_url(:id => product.id)

# Sample resource route (maps HTTP verbs to controller actions automatically):
#   resources :products

# Sample resource route with options:
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

# Sample resource route with sub-resources:
#   resources :products do
#     resources :comments, :sales
#     resource :seller
#   end

# Sample resource route with more complex sub-resources
#   resources :products do
#     resources :comments
#     resources :sales do
#       get 'recent', :on => :collection
#     end
#   end

# Sample resource route within a namespace:
#   namespace :admin do
#     # Directs /admin/products/* to Admin::ProductsController
#     # (app/controllers/admin/products_controller.rb)
#     resources :products
#   end

# You can have the root of your site routed with "root"
# just remember to delete public/index.html.
# root :to => 'welcome#index'

# See how all your routes lay out with "rake routes"

# This is a legacy wild controller route that's not recommended for RESTful applications.
# Note: This route will make all actions in every controller accessible via GET requests.
# match ':controller(/:action(/:id))(.:format)'
end

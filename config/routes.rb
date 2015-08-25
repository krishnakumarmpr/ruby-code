Ss::Application.routes.draw do
#resources :lowerdetails 
 #     resources :lowyerservicedetails


  #resources :lowerdetails


  #resources :lservices

   

  #resources :lreports


  #resources :users


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

 #  resources :reservations 
    #collection do
     #get 'index'
     #get 'edit'
     #post 'new'
   #end
   
  # resources :traindetails do
#collection do
 
#get :index
 #get :new
  #post :create
  #get :edit
  #get :show
#put  :update
#end
#    end

#resources :demos 
resources :articles do 
resources :comments
	end

#resources :lowerdetails

#resource :lservices 
 


  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # DirecArticlesControllerts /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'lservices#new'
root :to => 'articles#index'
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

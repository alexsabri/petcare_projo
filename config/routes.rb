Rails.application.routes.draw do



  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'application#index' #this is the default home page(landing page)

  # _________________sessions and login stuff_________________________
  resource :session #singular resource which removes listing route and :id placeholder because we are not any session from db because we are storing in a hash

   # -----------------------ADDITIONAL ROUTES----------------------------

   # --------route when browse_a_sitter_button is clicked from landing pg--
   get "/search_main_page" => "application#search_main_page" , as: "search_main_page"
   post "/search_main_page" =>"application#find_all_petsitters_that_match_query" , as: "query_main_page"

   # ----------------route when sign up button is clicked---------------
   get "/petcare/register-as-who-now" => "application#page_for_choosing_type_of_registration" , as: "page_for_choosing_type_of_registration"

  # -----------1) routes for multistep form of PETOWNERS ---------------------------

# ____________1a) step 1 for basic creation of petowner_______________
  get "/petowners/new/basic_predetails" => "petowners#new_basic_predetails" , as: "new_petowner_basic_predetails"
  post "/petowners/new/basic_predetails" => "petowners#create_basic_predetails"

# __________1a i) step 1 routes for editing and updating basic predetails of petowner(not entirely new creation)

get "/petowners/:id/edit_basic_predetails" => "petowners#edit_basic_predetails" , as: "edit_petowner_basic_predetails"
patch "/petowners/:id/basic_predetails" => "petowners#update_basic_predetails"

# ___________1b) step 2 for personal details_________________________
  get "/petowners/:id/personal_details" => "petowners#edit_petowner_personal_details" , as: "edit_petowner_personal_details"
  patch "/petowners/:id/personal_details" => "petowners#update_petowner_personal_details"

# _______________1c) step 3 for adding pets_________________________

get "/petowner/:id/pets/new" => "petowners#addpets" , as: "petowner_add_pets"
post "/petowner/:id/pets/create" =>"petowners#create_pets"

get "/petowner/:id/dashboard" => "petowners#dashboard" , as: "pet_owner_dashboard"


  # --------------------------------------------------------------------


  # ---------2) routes for multistep form of PETSITTERS -----------------

  # _______2a)step 1 routes for creating new petsitter_______________
  get "/petsitters/new/basic_predetails" => "petsitters#new_basic_predetails" , as: "new_petsitter_basic_predetails"
  post "/petsitters/new/basic_predetails" => "petsitters#create_basic_predetails"

  # _______2a i)step 1 routes for editing and updating the basic info(not entirely new creation)
  get "/petsitters/:id/edit_basic_predetails" => "petsitters#edit_basic_predetails" , as: "edit_basic_predetails"
  patch "/petsitters/:id/basic_predetails" => "petsitters#update_basic_predetails"

  # ______2b)step 2 routes ___________________________________________
  get "/petsitters/:id/personal_details" => "petsitters#edit_petsitter_personal_details" , as: "edit_petsitter_personal_details"
  patch "/petsitters/:id/personal_details" => "petsitters#update_petsitter_personal_details"

  # ______2c)step 3 routes_____________________________________________
  get "/petsitters/:id/experience_and_skills_details" => "petsitters#edit_petsitter_experience_and_skills_details" , as: "edit_experience_and_skills_details"
  patch "/petsitters/:id/experience_and_skills_details" => "petsitters#update_petsitter_experience_and_skills_details"

  # ______2d)step 4 routes_____________________________________________
  get "/petsitters/:id/home_details" => "petsitters#edit_petsitter_home_details" , as: "edit_petsitter_home_details"
  patch "/petsitters/:id/home_details" => "petsitters#update_petsitter_home_details"

  # ______2e)step 5 routes_____________________________________________
  get "/petsitters/:id/charges_plus_calendar" => "petsitters#edit_petsitter_charges_plus_calendar" , as: "edit_petsitter_charges_plus_calendar"
  patch "/petsitters/:id/charges_plus_calendar" => "petsitters#update_petsitter_charges_plus_calendar"

  get "/petsitter/:id/dashboard" => "petsitters#dashboard" , as: "pet_sitter_dashboard" 


# -----------------routes for sessions to allow authentication----------------

  # normally we would write resources :sessions(plural) but the problem this gives routes like get "/sessions/:id" or "sessions/:id/edit" but we only use :id placeholder when we need to look up stuff in the db like Model.find(params[:id]), but we are not storing sessions in the db(we are storing them in a hash that we later place in the coookie) so we don't need that .
  
  resource :session #called a singular resource

  # --------------------------------------------------------------------------------
  resources :unavailabledates
  resources :junctionofservicesandpetsitters
  resources :sittingservices
  resources :junctionofpetsitterandpettypes
  resources :petsitters
  resources :pets
  resources :pettypes
  resources :residential_areas
  resources :petowners


 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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

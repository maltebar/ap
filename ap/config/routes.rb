Rails.application.routes.draw do

  resources :code_solution_attachments
  resources :code_case_attachments
  resources :attachments
  resources :group_mems
  mount Ckeditor::Engine => '/ckeditor'
  resources :board_post_upvotes
  resources :resources
  resources :memberships
  get 'users/userlist' => 'users#userlist'
  get 'design_cases/design_admin'
  get 'code_cases/code_admin'
  get 'partnerships/admin_form'
 
  resources :archive 
  resources :admin_pg
  resources :comment_upvotes
  resources :notifications
  resources :ownerships
  devise_for :users
  resources :users
  resources :tweets
  resources :groups
  resources :partnerships
  resources :projects
  resources :comments do
    resources :board_posts
  end
  resources :board_posts do
    resources :comments
  end
  resources :code_solutions
  resources :design_solutions
  resources :issues
  resources :code_cases
  resources :design_cases do
    resources :design_solutions
  end

  root to: "home#index"

  get 'home/index'


  
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

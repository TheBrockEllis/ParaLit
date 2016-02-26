Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout', :sign_up => 'register', :forgot_password => 'reset', :edit => 'profile'}
  devise_for :books
  devise_for :pages

  get 'about' => 'website#about'
  get 'why' => 'website#why'

  get 'dashboard' => 'dashboard#index', as: 'dashboard'

  #get 'books' => 'books#index', as: 'books' #this list will be shown in the dashboard index

  resources :books, :except => [:index] do
    resources :pages, :except => [:index, :show]
  end

=begin
  get 'books/new' => 'books#new', as: 'new_book'
  post 'books/create' => 'books#create', as: 'create_book'
  get 'books/:id' => 'books#show', as: 'show_book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  put 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

  get 'books/:book_id/pages/new' => 'pages#new', as: 'new_page'
  post 'books/:id/pages/create' => 'pages#create', as: 'create_page'
=end

  root 'website#index'

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

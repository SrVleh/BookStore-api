Rails.application.routes.draw do
  resources :ordered_books
  resources :orders
  resources :current_user
  resources :books

  get '/profile_page', to: 'profile_page#show'
  get '/ongoing_order', to: 'orders#ongoing_order'
  get '/ordered_books/:id', to: 'orders#ordered_books'
  get '/get_books_by_current_order', to: 'ordered_books#get_books_by_current_order'

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
   sessions: 'users/sessions',
   registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

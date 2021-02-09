Rails.application.routes.draw do
  get 'novel/index'
  get 'novel/show'
  get 'novel/new'
  get 'novel/create'
  get 'novel/update'
  get 'novel/edit'
  get 'novel/destroy'
  #get 'publishers/index'
  #get 'publishers/show'
  #get 'publishers/new'
  #get 'publishers/create'
  #get 'publishers/update'
  #get 'publishers/edit'
  #get 'publishers/destroy'
  #get 'genres/index'
  #get 'genres/show'
  #get 'genres/new'
  #get 'genres/create'
  #get 'genres/update'
  #get 'genres/edit'
  #get 'genres/destroy'
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/hello'
  resources :books
  resources :users
  resources :authors
  resources :publishers
  resources :genres
  resources :novels do
    collection do
      get :search
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

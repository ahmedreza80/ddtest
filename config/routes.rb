Rails.application.routes.draw do


  resources :interiors
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :kidswardrobs
  resources :kidstudyts
  resources :dressingts
  resources :wardrobes
  resources :besidets
  resources :kidsbs
  resources :divanbs
  resources :doublebs
  resources :sofacumbs
  resources :upholsteredbs
  resources :hydraulicstoragebs
  resources :singlebs
  resources :kingsizebs
  resources :queensizebs
  resources :kitchencabinets
  resources :diningbenches
  resources :diningchairs
  resources :diningts
  resources :lshapedcornersofas
  resources :threeseatersofas
  resources :twoseatersofas
  resources :oneseatersofas
  resources :woodensofasets
  resources :fabricsofasets
  resources :writingts
  resources :spotts
  resources :sidets
  resources :centerts
  resources :bookcabinets
  resources :tvcabinets
  resources :benches
  resources :chairs
  resources :sofas
  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
  get '/cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create'
  get 'search', to: 'search#search'
  get "welcome/sofas"
  get "welcome/about"
  get "welcome/contact"
  get "welcome/privacy"
  get "welcome/faq"
  get "welcome/delivery"
  get "welcome/return"

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

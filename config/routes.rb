NewAuthDemo::Application.routes.draw do

  get 'static_pages/home'
  get 'static_pages/contact'
  get 'static_pages/about'
  get 'static_pages/help'


  resources :users, :only => [:create, :new, :show]
  resource :session, :only => [:create, :destroy, :new]

  root :to => "users#show"
end

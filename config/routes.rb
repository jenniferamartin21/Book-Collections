Rails.application.routes.draw do
  get 'demos/index'
  get 'pages/index'
  get 'pages/show'
  get 'pages/new'
  get 'pages/edit'
  get 'pages/delete'
  get 'subjects/index'
  get 'subjects/show'
  get 'subjects/new'
  get 'subjects/edit'
  get 'subjects/delete'

  root 'demos#index'
  get 'demos/index'
  #get 'demo/hello'
  resources :posts
  resources :subjects do
    member do 
      get :delete
    end

    #collection do
    #  get :export
    #end 
  end
  resources :pages do
    member do 
      get :delete
    end

    #collection do
    #  get :export
    #end 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

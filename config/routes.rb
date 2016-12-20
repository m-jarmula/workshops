Rails.application.routes.draw do
  root 'visitors#index'
  devise_for :users
  
  resources :students do
    get :subjects
  end
  
  resources :teachers do
    get :subjects
  end
  
  resources :subjects do
    collection do
       get 'report'
    end
  end
end

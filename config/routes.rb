Rails.application.routes.draw do
  root "subjects#index"
  
  resources :subjects do
    member do
      get :delete
    end
  end

  
  get 'test/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

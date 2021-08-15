Rails.application.routes.draw do
  root to: 'items#index'

  resources :items do
    member do
      post 'complete'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root :to => 'users#index'

  resources :users do
    resources :binges
  end
  
  resources :shows do
    collection do
      get 'autocomplete'
    end
  end

  get '/log-in'=> 'sessions#new'
  post '/log-in' => 'sessions#create'
  get '/log-out' => 'sessions#destroy', as: :log_out

end

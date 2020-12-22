Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    resource :users do
      get '', to: 'user#index'
      post '/new', to: 'user#create'
      patch '/:user_id', to: 'user#update'
      delete '/:user_id', to: 'user#delete'
    end
  end

  namespace :public do
    resource :users do
      get '/:user_id', to: 'user#show'
      patch '/:user_id', to: 'user#update'
    end
  end

end

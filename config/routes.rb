Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json}, path: '/' do
    namespace :v1 do
      resources :points
      resources :places do
        resources :points
      end
    end
  end
end

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json }, path: '/api'  do
    namespace :v1 do
      resources :ideas
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

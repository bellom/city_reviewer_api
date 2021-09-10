Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :cities, only: [:create, :destroy, :show, :index], param: :slug
      resources :reviews, only: [:create, :destroy, :show, :index]
    end
  end

end
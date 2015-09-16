Rails.application.routes.draw do
  resources :artists, only: [:index, :new, :create, :show] do
    resources :albums
  end

  root "artists#index"
end

Rails.application.routes.draw do
  root 'main_page#index'

  resources :cabbages do
    post :clear_image, on: :member
  end
end

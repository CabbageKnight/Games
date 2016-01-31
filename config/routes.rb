Rails.application.routes.draw do
  resources :cabbages
  root 'main_page#index' do
  post :clear_image, on: :member
end
end

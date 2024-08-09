Rails.application.routes.draw do
  resources :todos do
    member do
      post :complete
    end
  end
end

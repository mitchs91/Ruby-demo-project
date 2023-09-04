Rails.application.routes.draw do
  root "tools#index"

  resources :tools do
    resources :categories
  end
end

BrewApp::Application.routes.draw do
  devise_for :users
  root "brews#index"

  resources :brews
end

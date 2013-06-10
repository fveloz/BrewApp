BrewApp::Application.routes.draw do
  root "brews#index"

  resources :brews
end

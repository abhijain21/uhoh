Uhoh::Engine.routes.draw do
  match 'failures/sim' => 'failures#sim' 
  resources :failures
  get "failures/create"

  root :to => "failures#index"

end

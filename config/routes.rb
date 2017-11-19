Rails.application.routes.draw do
  get 'uploads/new'

  get 'uploads/create'

  get 'uploads/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'profile', to: 'users#show'
	root to: "galleries#index"
	resources :galleries, :photos, :uploads
end

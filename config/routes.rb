Rails.application.routes.draw do
  devise_for :users
	root to: 'home#index'
	get 'home/index'
	get 'home/howto'
	get 'home/about'
	resources :assistances
end

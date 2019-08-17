Rails.application.routes.draw do
	root to: 'home#index'
	get 'home/index'
	get 'home/howto'
	get 'home/about'
	resources :assistances
end

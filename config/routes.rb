Rails.application.routes.draw do
	
	get 'welcome/index'
	root 'welcome#index'
	get 'api', to: 'welcome#index'

	devise_for :users
	
	namespace :api, defaults: { format: :json } do
  		resources :users 
  	end

end

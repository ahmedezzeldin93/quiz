Rails.application.routes.draw do

	get 'welcome/index'
	root 'welcome#index'
	get 'api', to: 'welcome#index'

	devise_for :users
	devise_scope :user do
      post 'registrations' => 'registrations#create', :as => 'register'
      post 'sessions' => 'sessions#create', :as => 'login'
      delete 'sessions' => 'sessions#destroy', :as => 'logout'
    end
	
	namespace :api do
      resources :quizzes
  		resources :groups do
  		resources :quizzes, only: [:index, :update]
  		end
  		resources :users do
      resources :quizzes
      end
  		resources :questions

  		post '/answer_quizz', to: "students_answers#create"
  	end

end

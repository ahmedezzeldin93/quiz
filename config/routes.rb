Rails.application.routes.draw do

	get 'welcome/index'
	root 'welcome#index'
	get 'api', to: 'welcome#index'

	devise_for :users
	
	namespace :api do
    devise_scope :user do
      post 'registrations' => 'registrations#create', :as => 'register'
      post 'sessions' => 'sessions#create', :as => 'login'
      delete 'sessions' => 'sessions#destroy', :as => 'logout'
    end

    resources :quizzes
  	resources :questions

    resources :groups do
  		resources :quizzes, only: [:index, :update]
  	end
  	
    resources :users do
      resources :quizzes
    end

  		post '/answer_quizz', to: "students_answers#create"
      
  end
end

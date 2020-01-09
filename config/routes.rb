Rails.application.routes.draw do

	get '/login', to: 'users#login'
	post '/login', to: 'users#check_credentials'
	delete '/logout', to: 'users#logout'

  resources :accounts do
		resources :transactions
	end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: "home#index"
	resources :parents
	resources :offenses
	resources :students
	resources :achievements
	resources :courses
	resources :coursedets
end

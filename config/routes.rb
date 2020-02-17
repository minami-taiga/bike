Rails.application.routes.draw do
  devise_for :users
	root 'top#top'
  #root to: "items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :items, only: [:new, :create, :index, :show, :destroy] do
		resource :item_comments, only: [:create]
	end
	resources :users


end

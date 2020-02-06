Rails.application.routes.draw do
  get 'items/show'
  get 'items/edit'
  root to: "items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

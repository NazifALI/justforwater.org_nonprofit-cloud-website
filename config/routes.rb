Rails.application.routes.draw do

  get 'contact/', to: 'root#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'root#index'
end

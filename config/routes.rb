Rails.application.routes.draw do
  get 'guests/index'
  get 'guests/show'
  get 'guests/new'
  get 'guests/create'
  get 'guests/edit'
  get 'guests/update'
  get 'guests/destroy'
  get 'contacts/index'
  get 'contacts/show'
  get 'contacts/new'
  get 'contacts/create'
  get 'contacts/edit'
  get 'contacts/update'
  get 'contacts/destroy'
  get 'home/index'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

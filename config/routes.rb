Rails.application.routes.draw do
  resources :guests, only: %i[new create index show]
  resources :contacts, only: %i[new create show index destroy]

  # get '/about', to:'home#about'
  # get '/contact', to:'contacts#new'
  # root 'home#index'

  get '/', to: 'home#index', as: 'root'
  # root_path
  get '/:id', to: 'home#about', as: 'about'
  # about_path
  get 'contacts/:id', to: 'contacts#new'
  # lead_path
  # get 'guests/', to: 'guests#index'

  post 'guests', to: 'guests#create'

  # root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

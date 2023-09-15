Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'welcome', to: 'pages#home';
  get 'about', to: 'pages#about';
  get 'pokemons', to: 'pokemon#index'
  get 'pokemons/new', to: 'pokemon#new'
  post 'pokemons', to: 'pokemon#create'
end

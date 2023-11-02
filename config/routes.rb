Rails.application.routes.draw do
  root 'pages#home'
  get 'login', to: 'sessions#new'  # Utilisez 'new' pour afficher le formulaire de connexion
  post 'login', to: 'sessions#create'  # Utilisez 'create' pour traiter la soumission du formulaire
  get 'signup', to: 'registrations#new'
delete 'logout', to: 'sessions#destroy'
end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

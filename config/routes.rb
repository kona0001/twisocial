Rails.application.routes.draw do
  root 'timeline#index'
  get 'auth/index'
  get 'auth/show'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'hello' => 'timeline#hello'
  get 'bye' => 'timeline#bye'
  get 'index' => 'timeline#index'
  get 'timeline/:situation' => 'timeline#timeline'
  post 'timeline/post' => 'timeline#store'

  get 'menu' => 'menu#index'
  get 'choice' =>'menu#choice'
  get 'finish' =>'menu#finish'
  post 'choice/post' => 'menu#store'
  get 'choicename' =>'menu#choicename'
  post 'choicename/post' => 'menu#store_choicename'
  get 'inp' => 'menu#inp'
  post 'inp/post' => 'menu#inpstore'


  get 'data/show' => 'data#show'
  get 'data/create_situation' => 'data#create_situation'
  post 'data/store_situation' => 'data#store_situation'
  get 'data/create_spamuser' => 'data#create_spamuser'
  post 'data/store_spamuser' => 'data#store_spamuser'



end

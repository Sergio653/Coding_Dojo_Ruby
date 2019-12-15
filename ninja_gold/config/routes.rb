Rails.application.routes.draw do
  root 'rpg#index'

  post 'rpg/farm' => 'rpg#farm'
  post 'rpg/cave' => 'rpg#cave'
  post 'rpg/house' => 'rpg#house'
  post 'rpg/casino' => 'rpg#casino'
  
  get 'reset' => 'rpg#reset'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

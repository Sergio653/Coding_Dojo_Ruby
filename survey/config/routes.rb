Rails.application.routes.draw do
  get 'survey' => 'survey#show'

  get 'results' => 'survey#result'

  post 'survey/create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

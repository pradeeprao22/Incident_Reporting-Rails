Rails.application.routes.draw do
  resources :incidents, only: [:report, :show, :new, :create]
  resources :detaileds
   
  # add this line to link tags
  get 'tags/:tag', to: 'detaileds#index', as: :tag

  get '/message', to: 'incidents#message'

  get 'detaileds/index'
  root 'incidents#report'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

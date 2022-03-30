Rails.application.routes.draw do
  resources :items

  get 'items/:id/show', to: 'items#show', as: 'items_show'

  get 'items/:id/edit', to: 'items#edit', as: 'items_edit'

  patch 'items/:id/edit/update', to: 'items#update', as: 'items_update'

  get 'items/:id/delete', to: 'items#delete'

  delete 'items/:id/delete', to: 'items#delete', as: 'items_delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

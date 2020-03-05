Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :tasks
  # read all
  get 'tasks', to: 'tasks#index'
  # get for a new task needs to be before read one
  # it needs to be created first
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  # read one
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # create-post request
  post 'tasks', to: 'tasks#create', as: 'create_task'

  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update', as: 'update_task'

  # delete
  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task'
end

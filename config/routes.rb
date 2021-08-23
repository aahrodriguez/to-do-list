Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
  root "tasks#index"
  resources :tasks, except: :show
  devise_for :users
  patch "toggle/:id", to: "tasks#toggle", as: :toggle
  delete "all", to: "tasks#tasks_delete", as: :tasks_to_delete
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

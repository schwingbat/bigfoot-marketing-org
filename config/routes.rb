Rails.application.routes.draw do
  resources :projects

  get 'manage/projects', to: 'manage#projects', as: :manage_projects

  root to: 'home#index'

  # Users go to site.url/request to create new projects
  get 'request', to: 'projects#new'
  post 'request', to: 'projects#create'

  devise_for :users, skip: [:sessions, :registrations]
  as :user do
    get 'signup', to: 'devise/registrations#new', as: :new_user_registration
    post 'signup', to: 'devise/registrations#create', as: :user_registration
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'login', to: 'devise/sessions#create', as: :user_session
    get 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :user_logout
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

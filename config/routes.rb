Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  mount Ckeditor::Engine => '/ckeditor'
  resources :cheatsheets
  get 'tags/:tag', to: 'cheatsheets#index', as: :tag

  root 'cheatsheets#index'
  get 'cheatsheets/new'
  get 'cheatsheets/create'
  get 'cheatsheets/edit'
  get 'cheatsheets/update'
  get 'cheatsheets/destroy'
  get 'cheatsheets/show'
end

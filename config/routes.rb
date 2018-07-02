Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  scope :fruits do
    resources :apples, only: %i(index show)
    # get 'apples/index'
    # get 'apples/show'

  end
  scope module: :schools do
    resources :high_schools, only: %i(index show)
    # get 'high_schools/index'
    # get 'high_schools/show'
  end
  namespace :admin do
    resources :books, only: %i(index show)
    # get 'books/index'
    # get 'books/show'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

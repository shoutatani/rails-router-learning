Rails.application.routes.draw do
  # first of all, to check routing, rails routes in console or, show-routes in pry-rails console.

  resources :pages, only: [:index, :show] do
    collection do
      # added actions for dealing collection, like /pages/re_generate
      get 're_generate'
      get 'check/:number', to: 'pages#check'
    end
    member do
      # added actions for dealing collection's member, like /pages/1/calc
      get 'calc'
    end
  end

  scope :fruits do
    # access to /fruits/apples, guide /apples_controller
    resources :apples, only: %i(index show)
  end

  scope module: :schools do
    # access to /high_schools, guide /schools/high_schools_controller
    resources :high_schools, only: %i(index show)
  end

  namespace :admin do
    # access to /admin/books, guide /admin/books_controller
    resources :books, only: %i(index show) do
      # access to /admin/books/1/articles, guide /admin/articles_controller
      resources :articles, only: [:index, :show]

      # set controller location by using module with scope option.
      scope module: :books do
        # access to /admin/books/1/records, guide /admin/books/records_controller
        resources :records, only: [:index, :show]
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

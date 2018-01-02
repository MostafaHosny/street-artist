Rails.application.routes.draw do
   resources :artists do
    collection do
        get 'search'
    end
  end
  root 'artists#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ingredient_categories do
    member do
      post 'add-ingredient', as: :add_ingredient
      delete 'remove-ingredient', as: :remove_ingredient
    end
  end
end

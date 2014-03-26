CookItUp::Application.routes.draw do
  root to: 'recipes#home'
  get 'recipes', to: 'recipes#index'
  get 'skills', to: 'skills#index'
end

CookItUp::Application.routes.draw do
  root to: 'recipes#home'
  get 'recipes', to: 'recipes#index'
  get 'skills', to: 'skills#index'
  post 'skills', to: 'recipes#display'
end

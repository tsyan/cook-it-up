CookItUp::Application.routes.draw do
  root to: 'recipes#home'
  get 'recipes', to: 'recipes#index'
  get 'skills', to: 'skills#index'
  post 'known_recipes', to: 'recipes#display'
  post 'unknown_skills', to: 'skills#display'
  get 'recipes/:id/photo_upload', to: 'recipes#new_photo', as: 'upload_photo'
  patch 'recipes/:id/photo_upload', to: 'recipes#save_photo', as: 'photo'
end

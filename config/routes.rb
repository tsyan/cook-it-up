CookItUp::Application.routes.draw do
  root to: 'recipes#home'

  get 'recipes', to: 'recipes#index'
  get 'skills', to: 'skills#index'
  get 'all_skills', to: 'skills#all_skills', as: 'all_skills'

  post 'known_recipes', to: 'recipes#display'
  post 'unknown_skills', to: 'skills#display'

  get 'recipes/:id/photo_upload', to: 'recipes#new_photo', as: 'upload_recipe_photo'
  patch 'recipes/:id/photo_upload', to: 'recipes#save_photo', as: 'recipe_photo'

  get 'skills/:id/photo_upload', to: 'skills#new_photo', as: 'upload_skill_photo'
  patch 'skills/:id/photo_upload', to: 'skills#save_photo', as: 'skill_photo'
end

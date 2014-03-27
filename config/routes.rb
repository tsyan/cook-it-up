CookItUp::Application.routes.draw do
  root to: 'recipes#home'
  get 'recipes', to: 'recipes#index'
  get 'skills', to: 'skills#index'
  post 'skills', to: 'recipes#display'
  get 'recipes/:id/photo_upload', to: 'recipes#new_photo', as: 'upload_photo'
  patch 'recipes/:id/photo_upload', to: 'recipes#save_photo', as: 'photo'
end

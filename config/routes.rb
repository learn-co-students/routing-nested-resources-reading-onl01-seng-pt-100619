Rails.application.routes.draw do
  get 'authors/:id/posts', to: 'authors#posts_index'
  get 'authors/:id/posts/:post_id', to: 'authors#post'
  resources :authors, only: [:posts_index, :show, :post]

  # resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # root 'posts#index'

end

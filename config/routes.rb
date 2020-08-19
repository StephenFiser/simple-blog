Rails.application.routes.draw do
  devise_for :authors
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "readers/home#index"
  get '/blog/:id' => 'readers/posts#show', as: :blog_post

  scope module: 'authors' do
    get 'stats' => 'stats#index'
    resources :posts do
      resources :elements
    end
  end
end

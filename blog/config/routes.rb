Rails.application.routes.draw do
  resources :users
  resources :posts
  get 'mypage/myaction'
  get '/home(/:hello)', to: 'home#index'
  get 'posts/page/(:page(.:format))', to: 'posts#index' 
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

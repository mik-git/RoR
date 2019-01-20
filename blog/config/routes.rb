Rails.application.routes.draw do
  get 'mypage/myaction'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

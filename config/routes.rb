Rails.application.routes.draw do
  get 'blog/index'
  root to: "blog#index"
end

Rails.application.routes.draw do
  get '/blog' => 'blog#index', as: 'blog'
  get '/blog/:id' => 'blog#show', as: 'blog_post'
  root 'blog#index'
end

Rails.application.routes.draw do
  #use path when linking different routes in html
  root 'blog#index'
  get '/blogs' => 'blog#index', as: 'blogs'
  get '/blogs/new' => 'blog#new', as:'new_blog'
  post '/blogs' => 'blog#create' #blogs
  get '/blogs/:id' => 'blog#show', as: 'blog'
end

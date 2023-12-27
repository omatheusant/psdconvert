Rails.application.routes.draw do
  post '/upload', to: 'images#upload'
 end

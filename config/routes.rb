Rails.application.routes.draw do
  root 'page#index'
  post 'gen_url', to: 'url_short#generate_short_url'
end

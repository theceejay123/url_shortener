Rails.application.routes.draw do
  Rails.application.routes.default_url_options[:host] = 'https://sh.onpaper.ca'

  get '/s/:slug', to: 'link#show', as: :short
  post '/link', to: 'link#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

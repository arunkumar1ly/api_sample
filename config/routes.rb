Rails.application.routes.draw do

  resources :articles

  namespace :api, path: '/', constraints: {subdomain: 'api'} do
	resources :articles
  end
end

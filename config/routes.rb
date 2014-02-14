Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :notifications
  end
end

Spree::Core::Engine.routes.draw do
  get '/destroy_notification', to: 'notifications#destroy_notification'
end

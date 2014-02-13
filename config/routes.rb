Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :notifications
  end
end

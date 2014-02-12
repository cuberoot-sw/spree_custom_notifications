Spree::Core::Engine.routes.draw do
  # Add your extension routes here
end

Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :notifications
  end
end

# Spree::Core::Engine.routes.prepend do

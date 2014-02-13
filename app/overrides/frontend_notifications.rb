Deface::Override.new(
  virtual_path: 'spree/home/index',
  insert_top: "[data-hook='homepage_products']",
  partial: 'spree/notifications/notifications',
  name: 'frontend_notifications'
)

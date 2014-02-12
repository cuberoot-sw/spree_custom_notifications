#Deface::Override.new(
  #virtual_path: 'spree/admin/shared/_configuration_menu',
  #name: 'store_credits_admin_configurations_menu',
  #insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
  #text: "<%= configurations_sidebar_menu_item 'Notifications', '/admin/notifications' %>",
  #disabled: false)

#Deface::Override.new(:virtual_path => "spree/layouts/admin",
    #:name => "admin_content_admin_tab_parser",
    #:insert_bottom => "[data-hook='admin_tabs']",
    #:text => "<%= tab :notifications,  :url => 'admin/new_tab', :icon => 'icon-th-large' %>",
    #:disabled => false)

Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "admin_notification_link",
                     :insert_bottom =>  'ul.fullwidth-menu', #"[data-hook='admin_tabs']",
                     :text => "hello world",
                     :disabled => false)

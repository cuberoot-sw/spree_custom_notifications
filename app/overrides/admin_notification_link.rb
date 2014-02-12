Deface::Override.new(virtual_path: 'spree/admin/shared/_menu',
                     insert_bottom: "[data-hook='admin_tabs']",
                     text: "<%= tab(:notifications, :url => '/admin/notifications') %>",
                     name: 'admin_notification_link'
                    )

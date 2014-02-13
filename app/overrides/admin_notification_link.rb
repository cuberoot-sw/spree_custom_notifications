Deface::Override.new(virtual_path: 'spree/admin/shared/_configuration_menu',
                     insert_bottom: 'ul.sidebar',
                     text: "<%= tab(:notifications, :url => '/admin/notifications') %>",
                     name: 'admin_notification_link'
                    )

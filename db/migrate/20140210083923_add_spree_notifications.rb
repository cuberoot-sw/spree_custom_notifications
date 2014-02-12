# create table spree_notifications
class AddSpreeNotifications < ActiveRecord::Migration
  def change
    create_table :spree_notifications do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :notification

      t.timestamps
    end
  end
end

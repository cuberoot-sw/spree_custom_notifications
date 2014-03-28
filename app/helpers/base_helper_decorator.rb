# get Notifications
Spree::BaseHelper.class_eval do
  def get_notification
    notifications = []
    if  session['notification_hide_time'].nil?
        notifications = Spree::Notification.where("start_date <= now() AND  end_date >= now()")
     else
     		notifications = Spree::Notification.where("start_date <= now() AND  end_date >= now() AND updated_at > ?",session['notification_hide_time'])
    end
    notifications
  end
end

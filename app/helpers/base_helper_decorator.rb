# get Notifications
Spree::BaseHelper.class_eval do
  def get_notification
    notifications = []
    session['show_notification'] = true if session['show_notification'].nil?
    if session['show_notification']
      session['show_notification'] = true
      notifications =
        Spree::Notification.where('start_date <= :start_date_cond AND
                                end_date >= :end_date_cond',
                                {start_date_cond: Date.today, end_date_cond: Date.today})
    end
    notifications
  end
end

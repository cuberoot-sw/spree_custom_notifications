module Spree
  # Class NotificationController
  class NotificationsController < StoreController
    def destroy_notification
      session['notification_hide_time'] = Time.now
      result = { success: true }
      render json: result
    end
  end
end

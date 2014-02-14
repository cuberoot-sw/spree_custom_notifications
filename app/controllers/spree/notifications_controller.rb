module Spree
  # Class NotificationController
  class NotificationsController < StoreController
    def destroy_notification
      session['show_notification'] = false
      result = { success: true }
      render json: result
    end
  end
end

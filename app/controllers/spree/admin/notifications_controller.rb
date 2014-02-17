module Spree
  # Class NotificationController
  class Admin::NotificationsController < Admin::ResourceController
    before_filter :auth_user

    def index
      @notifications =
        Spree::Notification.order('created_at desc')
        .page(params[:page]).per(Spree::Config[:orders_per_page])
    end

    def new
      @spree_notification = Spree::Notification.new
    end

    def create
      @notification_params = _set_notification(params)
      @spree_notification = Spree::Notification.new(@notification_params)
      if @spree_notification.save
        redirect_to admin_notifications_path,
                    notice: 'Notification has been created Succefully.'
      else
        _date_time_string(@spree_notification)
        render :new
      end
    end

    def edit
      @spree_notification = Spree::Notification.find(params[:id])
      _date_time_string(@spree_notification)
    end

    def update
      @spree_notification = Spree::Notification.find(params[:id])
      @notification_params = _set_notification(params)

      if @spree_notification.update_attributes(@notification_params)
        redirect_to admin_notifications_path,
                    notice: 'Notification has been updated Successfully'
      else
        _date_time_string(@spree_notification)
        render :edit
      end
    end

    def _set_notification(params)
      @notification = {}
      @start_date = params[:notification][:start_date]
      @start_date = Time.zone.parse(params[:notification][:start_date]).getutc unless @start_date.blank?

      @end_date = params[:notification][:end_date]
      @end_date = Time.zone.parse(params[:notification][:end_date]).getutc unless @end_date.blank?
      @message = params[:notification][:notification]
      @notification = { notification: @message,
                        start_date: @start_date,
                        end_date: @end_date }
    end

    def _date_time_string(notification)
      notification.start_date =
        notification.start_date.strftime('%Y-%m-%d %H:%M') if notification.start_date?
      notification.end_date =
        notification.end_date.strftime('%Y-%m-%d %H:%M') if notification.end_date?
    end

    private

      def notification_params
        params.require(:notification).permit!
      end

      def auth_user
        redirect_to login_url unless spree_current_user.present?
      end
  end
end

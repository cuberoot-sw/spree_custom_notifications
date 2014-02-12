module Spree
  # Notification class
  class Notification < ActiveRecord::Base
    validates_presence_of :notification
    validate :end_date_greater_than_start_date

    def end_date_greater_than_start_date
      if start_date.blank?
        errors.add(:start_date, 'is required')
      elsif end_date.blank?
        errors.add(:end_date, 'is required')
      elsif end_date < start_date
        errors.add(:end_date, 'should be greater than start date')
      end
    end
  end
end

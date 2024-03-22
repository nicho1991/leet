class Appearance < ApplicationRecord

  validates_presence_of :default_timezone
  validate :default_timezone

  def set_leet_time
    self.is_leet = is_leet_checker
  end

  private

  def is_leet_checker
    time = created_at || Time.now
    time = time.in_time_zone(default_timezone)

    time_formatted = time.to_formatted_s(:time)
    time_formatted == '13:37'
  end
end

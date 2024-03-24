class Appearance < ApplicationRecord

  validates_presence_of :default_timezone
  validate :default_timezone

  def set_leet_time
    self.is_leet = is_leet_checker
  end

  private

  def appearance_time
    time = created_at || Time.now
    time.in_time_zone(default_timezone)
  end

  def is_leet_checker
    appearance_time.is_leet?
  end
end

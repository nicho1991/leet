
module ActiveSupport
  class TimeWithZone
    def is_hour_min?(hour: Integer, min: Integer)
      hour == self.hour && min == self.min
    end

    def is_leet?
      is_hour_min?(hour: 13, min: 37)
    end

    def before_leet?
      Time.now.before?(self.change(hour: 13, minute: 37))
    end

    def after_leet?
      Time.now.after?(self.change(hour: 13, minute: 37))
    end
  end
end

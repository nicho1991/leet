
module ActiveSupport
  class TimeWithZone
    def is_hour_min?(hour: Integer, min: Integer)
      hour == self.hour && min == self.min
    end

    def is_leet?
      is_hour_min?(hour: 13, min: 37)
    end
  end
end

module DateTimeWithZone
  class DateTime
    DATE_FORMATTER = "%Y-%m-%d"
    TIME_FORMATTER = "%I:%M %p"

    def initialize(*args)
      time_or_hash = args.shift
      case time_or_hash
      when Hash
        initialize_with_hash(time_or_hash)
      when Time
        with_timezone = args.pop
        initialize_with_time(time_or_hash, with_timezone)
      else
        raise ArgumentError, "only accepts a Hash or Time object, got #{time_or_hash}"
      end
    end

    def to_datetime
      Time.use_zone(@zone) { Time.zone.parse [@date, @time].join(" ") }
    end

    attr_accessor :date, :time, :zone

    private

    def initialize_with_hash(hash)
      @date = hash.fetch(:date) { raise ArgumentError, "date is missing" }
      @time = hash.fetch(:time) { raise ArgumentError, "time is missing" }
      @zone = hash.fetch(:zone, DateTimeWithZone.default_zone)
      DateTimeWithZone.validate_time_zone!(@zone)
      @zone = ActiveSupport::TimeZone[zone]
    end

    def initialize_with_time(time, zone)
      time_in_zone = time.in_time_zone(zone)
      @date = time_in_zone.strftime(DATE_FORMATTER)
      @time = time_in_zone.strftime(TIME_FORMATTER)
      @zone = ActiveSupport::TimeZone[zone]
    end
  end
end

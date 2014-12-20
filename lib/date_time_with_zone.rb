require "date_time_with_zone/version"

module DateTimeWithZone
  def self.default_zone
    @default_zone ||= "Pacific Time (US & Canada)".freeze
  end

  # A custom default zone can be set by add the following in
  # an initializer file. This method takes a string which
  # is the name of that zone.
  #
  # DateTimeWithZone.default_zone = "Alaska"
  #
  def self.default_zone=(zone)
    validate_time_zone! zone
    @default_zone = zone
  end

  def self.validate_time_zone!(zone)
    raise ArgumentError, "time zone is invalid. #{zone.inspect}" \
      unless ActiveSupport::TimeZone[zone]
  end
end

require "date_time_with_zone/datetime"

require 'spec_helper'

describe DateTimeWithZone::DateTime do
  it 'sets the correct datetime object with specified hash' do
    input = {date: "2014-03-14", time: "05:15 PM", zone: "Beijing"}
    datetime = described_class.new(input).to_datetime
    expect(datetime.zone).to eq('CST')
    expect(datetime.strftime(described_class::DATE_FORMATTER)).to eq('2014-03-14')
    expect(datetime.strftime(described_class::TIME_FORMATTER)).to eq('05:15 PM')
  end
end

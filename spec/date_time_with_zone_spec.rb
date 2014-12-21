require 'spec_helper'

describe DateTimeWithZone do
  it 'has a default zone' do
    expect(described_class.default_zone).to eq("Pacific Time (US & Canada)")
  end
end

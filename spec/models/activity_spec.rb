require 'rails_helper'

describe Activity, type: :model do
  it "gets started_at set to the current time by default" do
    @activity = build(:activity, started_at: nil)
    @activity.save
    expect {
      @activity.reload
    }.to change(@activity, :started_at)
  end
end

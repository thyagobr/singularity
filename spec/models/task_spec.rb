require 'rails_helper'

describe Task, type: :model do
  it "tasks with status of 'current' generate an activity" do
    @task = create(:task, status: 'current')
    expect(@task.activities.first).to be_present
    expect(@task.activities.first.finished_at).to be_nil
  end

  it "updates its current activity whenever it's set out of current" do
    @task = create(:task, status: 'current')
    @task.update(status: 'todo')
    expect(@task.activities.first.finished_at).to be_present
  end
end

FactoryBot.define do
  factory :task do
    user
    text { Faker::Lorem.words(2..5) }

    after(:create) do |this|
      create(:activity, task: this) if this.status == 'current'
    end
  end
end

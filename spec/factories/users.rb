# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  role                   :integer
#  avatar                 :string
#

FactoryBot.define do
  factory :user do
    confirmed_at Time.now
    name { Faker::Name.name }
    sequence :email do |n|
      "user#{n}@example.com"
    end
    # password "12345678"
    # password_confirmation "12345678"
    created_at { Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today) }

    trait :admin do
      role User.roles[:admin]
    end

  end
end

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

class User < ActiveRecord::Base
  enum role: %i[user vip admin]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable, #:confirmable,
  #        :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  def admin?
    role == 'admin'
  end

  def vip?
    role == 'vip'
  end

  def user?
    role == 'user'
  end

  def full_info
    "#{email} - #{name} - #{role}"
  end

  def short_info
    "#{email} - #{name}"
  end
end

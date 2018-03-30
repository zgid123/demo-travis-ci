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

describe User do
  let!(:user) { create(:user, :admin) }

  describe '#admin?' do
    subject { user.admin? }

    context 'is admin' do
      it { is_expected.to eq true }
    end

    context 'is not admin' do
      before { user.update(role: User.roles[:vip]) }

      it { is_expected.to eq false }
    end
  end

  describe '#vip?' do
    subject { user.vip? }

    context 'is vip' do
      before { user.update(role: User.roles[:vip]) }

      it { is_expected.to eq true }
    end

    context 'is not vip' do
      it { is_expected.to eq false }
    end
  end

  describe '#user?' do
    subject { user.user? }

    context 'is user' do
      before { user.update(role: User.roles[:user]) }

      it { is_expected.to eq true }
    end

    context 'is not user' do
      it { is_expected.to eq false }
    end
  end

  describe '#short_info' do
    subject { user.short_info }

    it { is_expected.to eq "#{user.email} - #{user.name}" }
  end
end

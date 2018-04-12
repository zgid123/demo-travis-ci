require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  let!(:admin) { create(:user, admin: true, name: 'Hihi') }
  let!(:user) { create(:user, admin: false, name: 'Kaka') }
  let!(:user) { create(:user, admin: false, name: 'lll') }

  describe '#index' do
    context 'access to index' do
      before do
        get :index
      end

      it { expect(assigns(:users)).to eq [admin, user] }
      it { expect(response).to render_template :index }
      it { expect(response.status).to eq 200 }
    end
  end
end

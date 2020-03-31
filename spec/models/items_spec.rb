require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @user = create(:user)
    @item = build(:item)
    @item.user_id = @user.id
  end

  describe 'バリデーション' do
    it 'bike_nameとimageどちらも値が設定されていれば、OK' do
      expect(@item.valid?).to eq(true)
    end

    it 'bike_nameが空だとNG' do
      @item.bike_name = ''
      expect(@item.valid?).to eq(false)
    end

    it 'imageが空だとNG' do
      @item.image_id = ''
      expect(@item.valid?).to eq(false)
    end
  end
end
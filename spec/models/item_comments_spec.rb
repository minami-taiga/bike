require 'rails_helper'

RSpec.describe ItemComment, type: :model do
  before do
    @user = create(:user)
    @item = build(:item, user_id: @user.id)
    @comment = build(:item_comment, user_id: @user_id, item_id: @item.id)
  end

  describe 'バリデーション' do
    it 'item_commentが空だとNG' do
      @comment.comment = ''
      expect(@comment.valid?).to eq(false)
    end
  end
end
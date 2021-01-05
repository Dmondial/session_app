require 'rails_helper'

RSpec.describe Sound, type: :model do
  before do
    @sound = FactoryBot.create(:sound)
  end

  describe '新規商品出品' do
    context '新規商品出品がうまくいくとき' do
      it 'file、title、explain が存在すれば登録できる' do
        expect(@sound).to be_valid
      end
    end

    context '新規出品がうまくいかないとき' do
      it 'fileが空だと登録できない' do
        @sound.file = nil
        @sound.valid?
        expect(@sound.errors.full_messages).to include("File can't be blank")
      end
      it 'titleが空だと登録できない' do
        @sound.title = nil
        @sound.valid?
        expect(@sound.errors.full_messages).to include("Title can't be blank")
      end

    end
  end
end

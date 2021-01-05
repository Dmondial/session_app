require 'rails_helper'

RSpec.describe Session, type: :model do
  before do
    @session = FactoryBot.build(:session)
  end

  describe '新規セッション作成' do
    context '新規セッション作成がうまくいくとき' do
      it 'sound_ids が複数存在すれば登録できる' do
        expect(@session).to be_valid
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

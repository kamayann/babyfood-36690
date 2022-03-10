require 'rails_helper'

RSpec.describe Baby, type: :model do
  before do
    @baby = FactoryBot.build(:baby)
  end

  describe '子ども新規登録' do
    context '新規登録できるとき' do
      it 'すべての値が正しく入力されていれば保存できる' do
         expect(@baby).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @baby.nickname = ''
        @baby.valid?
        expect(@baby.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'birth_day が空では登録できない' do
        @baby.birth_day  = ''
        @baby.valid?
        expect(@baby.errors.full_messages).to include("Birth day can't be blank")
      end
      it 'nicknameが11文字以上では登録できない' do
        @baby.nickname = 'あああああいいいいいう'
        @baby.valid?
        expect(@baby.errors.full_messages).to include("Nickname is too long (maximum is 10 characters)")
      end
    end
  end
end

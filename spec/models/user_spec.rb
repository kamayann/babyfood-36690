require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nicknameとemailとrelationship_id、passwordとpassword_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'nicknameが６文字以下であれば登録できる' do
        @user.nickname = 'aaaaaa'
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
        @user.password = '000000'
        @user.password_confirmation = '000000'
        expect(@user).to be_valid
      end
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it 'passworが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it 'nicknameが7文字以上では登録できない' do
        @user.nickname = 'yamadatarou'
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームは6文字以内で入力してください")
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = '00000'
        @user.password_confirmation = '00000'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end
    end
    
  
  end
  end
end

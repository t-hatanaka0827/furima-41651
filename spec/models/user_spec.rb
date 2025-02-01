require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it 'nicknameが空では登録できない' do
      user = User.new(nickname: '', email: 'test@example', password: '000000', password_confirmation: '000000', last_name: 'てすと', first_name: 'てすと', last_name_kana: 'テスト', first_name_kana: 'テスト', birth_date: Date.new(2000, 1, 1))
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'emailが空では登録できない' do
      user = User.new(nickname: 'テスト', email: '', password: '000000', password_confirmation: '000000', last_name: 'てすと', first_name: 'てすと', last_name_kana: 'テスト', first_name_kana: 'テスト', birth_date: Date.new(2000, 1, 1))
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
    it 'passwordが空では登録できない' do
      user = User.new(nickname: 'テスト', email: 'test@example', password: '', password_confirmation: '000000', last_name: 'てすと', first_name: 'てすと', last_name_kana: 'テスト', first_name_kana: 'テスト', birth_date: Date.new(2000, 1, 1))
      user.valid?
      expect(user.errors.full_messages).to include("Password can't be blank")
    end
    it 'password_confirmationが空では登録できない' do
      user = User.new(nickname: 'テスト', email: 'test@example', password: '000000', password_confirmation: '', last_name: 'てすと', first_name: 'てすと', last_name_kana: 'テスト', first_name_kana: 'テスト', birth_date: Date.new(2000, 1, 1))
      user.valid?
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'last_nameが空では登録できない' do
      user = User.new(nickname: 'テスト', email: 'test@example', password: '000000', password_confirmation: '000000', last_name: '', first_name: 'てすと', last_name_kana: 'テスト', first_name_kana: 'テスト', birth_date: Date.new(2000, 1, 1))
      user.valid?
      expect(user.errors.full_messages).to include("Last name can't be blank")
    end
    it 'first_nameが空では登録できない' do
      user = User.new(nickname: 'テスト', email: 'test@example', password: '000000', password_confirmation: '000000', last_name: 'てすと', first_name: '', last_name_kana: 'テスト', first_name_kana: 'テスト', birth_date: Date.new(2000, 1, 1))
      user.valid?
      expect(user.errors.full_messages).to include("First name can't be blank")
    end
    it 'last_name_kanaが空では登録できない' do
      user = User.new(nickname: 'テスト', email: 'test@example', password: '000000', password_confirmation: '000000', last_name: 'てすと', first_name: 'テスト', last_name_kana: '', first_name_kana: 'テスト', birth_date: Date.new(2000, 1, 1))
      user.valid?
      expect(user.errors.full_messages).to include("Last name kana can't be blank")
    end
    it 'first_name_kanaが空では登録できない' do
      user = User.new(nickname: 'テスト', email: 'test@example', password: '000000', password_confirmation: '000000', last_name: 'てすと', first_name: 'テスト', last_name_kana: 'テスト', first_name_kana: '', birth_date: Date.new(2000, 1, 1))
      user.valid?
      expect(user.errors.full_messages).to include("First name kana can't be blank")
    end
    it 'birth_dateが空では登録できない' do
      user = User.new(nickname: 'テスト', email: 'test@example', password: '000000', password_confirmation: '000000', last_name: 'てすと', first_name: 'テスト', last_name_kana: 'テスト', first_name_kana: 'テスト', birth_date: nil)
      user.valid?
      expect(user.errors.full_messages).to include("Birth date can't be blank")
    end
  end
end







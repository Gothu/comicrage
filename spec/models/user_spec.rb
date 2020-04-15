require 'rails_helper'

describe User do
  describe '#create' do

    it "全て入力した場合は登録できる" do
      user = create(:user)
      expect(user).to be_valid
    end

    it "nicknameがない場合は登録できない" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    it " 重複したnicknameが存在する場合は登録できない" do
      user = create(:user)
      another_user = build(:user, nickname: user.nickname)
      another_user.valid?
      expect(another_user.errors[:nickname]).to include("はすでに存在します")
    end

    it "emailがない場合は登録できない" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it " 重複したemailが存在する場合は登録できない" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    it "passwordがない場合は登録できない" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "passwordがあってもpassword_confirmationがない場合は登録できない" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    it " passwordが8文字以上であれば登録できること " do
      user = build(:user, password: "0" * 8, password_confirmation: "0" * 8)
      expect(user).to be_valid
    end

    it " passwordが7文字以下であれば登録できないこと " do
      user = build(:user, password: "0" * 7, password_confirmation: "0" * 7)
      user.valid?
      expect(user.errors[:password]).to include("は8文字以上で入力してください")
    end
    
  end
end
require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録" do
    context "新規登録できる場合" do
      it "nickname, email, password, first_name, family_name, family_name_kana, first_name_kana, cultivated_cropsが存在すると登録できる" do
        expect(@user).to be_valid
      end
    end

    context "新規登録できない場合" do
      it "nicknameが空だと登録できない" do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "emailが空では登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "重複したemailが存在する場合は登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "emailは@を含まないと登録できない" do
        @user.email = "aaaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "passwordが空では登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "Passwordが5文字以下では登録できない" do
        @user.password = "t1t1t"
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "Passwordが数字だけでは登録できない" do
        @user.password = "111111"
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "Passwordが英字だけでは登録できない" do
        @user.password = "tttttt"
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "Family_nameが空では登録できない" do
        @user.family_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "Famiy_nameが半角では登録できない" do
        @user.family_name = "ｱｲｳｴｵ"
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "First_nameが空では登録できない" do
        @user.first_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "First_nameが半角では登録できない" do
        @user.first_name = "ｱｲｳｴｵ"
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "Famiy_name_kanaが空では登録できない" do
        @user.family_name_kana = ""
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "Famiy_name_kanaが半角では登録できない" do
        @user.family_name_kana = "ｱｲｳｴｵ"
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "Family_name_kanaが全角カタカナでなければ登録できない" do
        @user.family_name_kana = "あ亜a"
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "First_name_kanaが空では登録できない" do
        @user.first_name_kana = ""
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "First_name_kanaが半角では登録できない" do
        @user.first_name_kana = "ｱｲｳｴｵ"
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "First_name_kanaが全角カタカナでなければ登録できない" do
        @user.first_name_kana = "あ亜a"
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end

      it "cultivated_cropsが空では登録できない" do
        @user.cultivated_crops = ""
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end
    end
  end
end

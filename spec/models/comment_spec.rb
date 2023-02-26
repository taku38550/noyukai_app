require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメントの投稿' do
    context 'コメントを保存できる場合' do
      it "commentが存在すれば保存できる" do
        expect(@comment).to be_valid
      end
    end

    context 'コメントを保存できない場合' do
      it "commentが空では投稿できない" do
        @comment.content = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include()
      end

      it "ユーザーがログインしていなければコメントできない" do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include()
      end
    end
  end
end

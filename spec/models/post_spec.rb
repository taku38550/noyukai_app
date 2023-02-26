require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe "記事の投稿" do
    context "記事の投稿がうまくいく時" do
      it "title, text, imageが存在すれば投稿できる" do
        expect(@post).to be_valid
      end
    end

    context "記事の投稿がうまくいかない時" do
      it "titleが空だと出品できない" do
        @post.title = ''
        @post.valid?
        expect(@post.errors.full_messages).to include()
      end

      it "textが空だと出品できない" do
        @post.text = ""
        @post.valid?
        expect(@post.errors.full_messages).to include()
      end

      it "imageが空だと出品できない" do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include()
      end

      it "紐ずくユーザーが存在しないと保存できない" do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include()
      end
    end
  end
end

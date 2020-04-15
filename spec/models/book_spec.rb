require 'rails_helper'

describe Book do
  describe '#create' do

    it "title、category_idが存在すれば登録できる" do
      book = create(:book)
      expect(book).to be_valid
    end

    it "titleがない場合は登録できない" do
      book = build(:book, title: "")
      book.valid?
      expect(book.errors[:title]).to include("を入力してください")
    end

    it "category_idがない場合は登録できない" do
      book = build(:book, category_id: "")
      book.valid?
      expect(book.errors[:category_id]).to include("を入力してください")
    end

  end
end
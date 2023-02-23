require 'rails_helper'

RSpec.describe Article, type: :model do

  context 'validation tests' do

    it 'ensure title presence' do
      article = Article.new(title: "USfjfjfA").save
      expect(article).to eq(true)
    end

    it "should be invalid" do
      article = Article.new(title: "Hell")
      expect(article.valid?).to_not eq(true)
    end

    it "should be valid" do
      article = Article.new(title: "Hello World")
      expect(article.valid?).to eq(true)
    end 

  end

end

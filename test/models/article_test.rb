require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "presence" do
    article = Article.new
    article.title = "A" * 201
    assert article.invalid?
    assert article.errors.include?(:title)
    assert article.errors.include?(:body)
    assert article.errors.include?(:released_at)
  end

  # open scope
  test "open" do
    article1 = FactoryGirl.create(:article, title: "現在", released_at: 1.day.ago, expired_at: 1.day.from_now)
    article2 = FactoryGirl.create(:article, title: "過去", released_at: 2.days.ago, expired_at: 1.day.ago)
    article3 = FactoryGirl.create(:article, title: "未来", released_at: 1.day.from_now, expired_at: 2.days.from_now)

    articles = Article.open
    assert_includes articles, article1, "現在の記事が含まれる"
    assert_includes articles, article2, "過去の記事が含まれる"
    assert_includes articles, article3, "未来の記事が含まれる"
  end
end
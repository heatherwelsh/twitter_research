require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  # assert true
  # end

  setup do
    %w(Bussiness Hobby Music Books).each do |title|
      Category.create!(title: title)

    end
  end

  test("suggested categories works correctly") do
    tweet = Tweet.new do |t|
      t.tweeted_text = 'My favorite hobby is knitting and I have made many hats from patterns in knitting #Books'

    end

    assert_equal("Hobby, Books", tweet.suggested_categories)
  end

  ############################################################################
  def test_setting_categories_from_a_string
    tweet = Tweet.new
    cat = Category.where(title: "Hobby").first
    assert(cat)

    tweet.categories << cat
    assert_equal(1,tweet.categories.size)

    tweet.categories_as_string = "Music, Books"
    assert_equal(%w(Music Books),
    tweet.categories.map(&:title).sort)
  end
end

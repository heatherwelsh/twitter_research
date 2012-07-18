require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
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
end

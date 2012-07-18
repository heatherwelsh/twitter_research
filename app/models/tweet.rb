class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:twitter_user, :tweeted_text, :tweeted_at, :user_id)

  validates(:twitter_user, presence: true)
  validates(:tweeted_text, presence: true)
  validates(:tweeted_at,   presence: true)
  validates(:user_id,      presence: true, uniqueness: true)

  belongs_to(:user)
  has_and_belongs_to_many(:category)


  def suggested_categories
    # String#split

    #String#downcase
    #tweet.downcase

    #text = tweeted_text.gsub(/#/, '')
    #tweet = tweeted_test.

    #titles = Category.all.map(&:title).map(&:downcase)

    #titles.include?(word)

  end
end

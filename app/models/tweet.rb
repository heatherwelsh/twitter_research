class Tweet < ActiveRecord::Base
  attr_accessible(:twitter_user, :tweeted_text, :tweeted_at)

  validates(:twitter_user, :presence => true)
  validates(:tweeted_text, :presence => true)
  validates(:tweeted_at, :presence => true)

  scope(:with_notes, includes(:notes).order('notes.created_at desc'))

  belongs_to(:user)
  has_and_belongs_to_many(:categories)
  has_many(:notes)

  def suggested_categories
    #String#split
    #String#downcase
    #Arrayjoin
    #text = tweeted_text.gsub(/#/, '')
    #titles = Category.all.map(&:title).map(&:downcase)
    #titles.include?(word)

    #Category.all.map(&:title)

  end
  #Returns a comma separated string of the current category titles
  def categories_as_string
    categories.map(&:title).sort.join(',')
  end

  #Given a comma separated string of category titles, reset the
  #categories for this tweet to the categories in the string

  def categories_as_strings= (new_categories)
    categories.clear

    new_categories.split(/\s*, \s*/).each do |title|
      cat =Category.where('LOWER(title) = ?', title.downcase).first
      categories << cat if !cat.nil?
    end
  end

end











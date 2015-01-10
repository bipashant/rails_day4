class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :tags

  scope :fetch_from_yesterday, ->{where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight).order(created_at: :desc)}

  scope :search, -> (title) { where("title like ?", "%#{title}%")}

def self.list_all_articles
  # binding.pry
  self.all
end
  def self.find_article_by_id id
    Article.find(id)
  end

end

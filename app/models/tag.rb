class Tag < ActiveRecord::Base
  has_and_belongs_to_many :articles

  def self.list_all_article tagname
      Tag.find_by_name(tagname)
  end
end

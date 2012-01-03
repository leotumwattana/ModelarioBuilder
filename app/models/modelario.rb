class Modelario < ActiveRecord::Base
  has_many :sections
  belongs_to :color_theme
  
  def root_sections
    self.sections.where(:root => true)
  end
end

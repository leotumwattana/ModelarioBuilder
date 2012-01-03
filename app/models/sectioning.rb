class Sectioning < ActiveRecord::Base
  belongs_to :section
  belongs_to :subsection, :class_name => 'Section'
end

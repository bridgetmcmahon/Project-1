# == Schema Information
#
# Table name: books
#
#  id         :bigint(8)        not null, primary key
#  title      :text
#  cover      :text
#  synopsis   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :shelves
  has_and_belongs_to_many :genres
end

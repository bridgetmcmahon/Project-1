# == Schema Information
#
# Table name: shelves
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shelf < ApplicationRecord
  has_and_belongs_to_many :books
  belongs_to :user, :optional => true
end

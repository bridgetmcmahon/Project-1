# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :text
#  email           :text
#  password_digest :text
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  # Validations
  has_secure_password
  validates :email, :presence => true, :uniqueness => true

  # Associations
  has_many :shelves
end

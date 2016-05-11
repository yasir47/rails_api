class User < ActiveRecord::Base

  include ActiveModel::Serialization

  validates :name, presence: true, length: { minimum: 4 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :phone_no, numericality: { only_integer: true }, length: { minimum: 7, maximum: 7 }
  validates :email, presence: true, uniqueness: true
  validates :gender, length: { minimum: 1 }

end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Uid
  extend FriendlyId
  friendly_id :first_name, use: :slugged
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :password, password: true
end

class User < ActiveRecord::Base
  has_many :user_restaurants
  has_many :restaurants, :through => :user_restaurants

  has_many :user_foods
  has_many :foods, :through => :user_foods

  has_many :followers, class_name: "Follow",
                       foreign_key: "follower_id"

  has_many :followees, class_name: "Follow",
                       foreign_key: "followee_id"

  # validates_presence_of :foreign_key

  validates :username, presence: true,
             uniqueness: true 
  validates :email, presence: true,
             uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end

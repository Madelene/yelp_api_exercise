class Follow < ActiveRecord::Base
  belongs_to :user

  validates :target_id, :user_id, presence: true,
            :uniqueness => { :scope => [:target_id, :user_id]}
end

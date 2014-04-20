class Company < ActiveRecord::Base
    has_many :interviews, dependent: :destroy
    validates :name, presence: true
end

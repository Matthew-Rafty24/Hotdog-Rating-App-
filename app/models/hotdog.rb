class Hotdog < ActiveRecord::Base
	validates :name, :price, :description, presence: true 

def self.order_alphabetical
	order(name: :asc)
end
end

class Seller < ActiveRecord::Base
    has_many :properties
    has_many :estates, through: :properties

    def full_name
        "#{self.first_name} #{self.last_name}" 
    end
    
end
class Property < ActiveRecord::Base
    belongs_to :seller
    belongs_to :estate

    def self.alphabetize
        self.all.sort{ |a| a.title.upcase }
    end

end
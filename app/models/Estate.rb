class Estate < ActiveRecord::Base
    has_many :properties
    has_many :sellers, through: :properties

    def grab_estate
        Property.where(estate_id: self.id)
    end

    # def self.delete_first_estate
    #     first_estate = Estate.first_estate
    #     first_estate.destroy
    #     Property.where(estate_id: first_estate.id).destroy_all
    # end
end
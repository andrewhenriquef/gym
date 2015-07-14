class ClientWorkout < ActiveRecord::Base

    def self.search(query)
        # where(:title, query) -> This would return an exact match of the query
        where("client_name LIKE ?", "%#{query}%") or
        where("trainer LIKE ?", "%#{query}%")
        
    end
end


class ClientWorkout < ActiveRecord::Base

    validates :paid_amount, numericality: true
    validates :client_name, presence: true
    validates :trainer, presence: true
    
    def self.search(search)
        
        key = "%#{search}%"
        # where(:title, query) -> This would return an exact match of the query
        where('client_name like :search OR trainer like :search', search: key)#é trata caralho, funcionou \0
        #where("client_name like ?", "%#{search}%") or 
        #where("trainer like ?", "%#{search}%")
        
    end
end


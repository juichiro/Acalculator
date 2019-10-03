class Calculator
    include ActiveModel::Model
    attr_accessor :number
    validates :name , presence: true
end 
    
class Cat < ApplicationRecord
    COLORS = ['Gray', 'Black', 'Orange', 'White', 'Brown', 'Yellow', 'Rainbow']
    validates :color, inclusion: {in: COLORS}
    validates :sex, inclusion: {in: ["M","F"]}
    validates :name, :sex, :color, :age, :description, presence: true
    
end

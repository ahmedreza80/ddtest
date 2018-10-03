class Product < ApplicationRecord
  has_many :properties, class_name: 'ProductProperty'
end

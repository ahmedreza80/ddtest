class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

           validates_uniqueness_of :mobile_number
  validates :mobile_number, phone: { possible: false, allow_blank: true, types: [:mobile] }
end


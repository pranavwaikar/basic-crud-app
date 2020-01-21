class Employee < ActiveRecord::Base
  validates :first_name,  presence:true, length: {minimum:3 , maximum:20}
  validates :last_name, presence:true, length: {minimum:3, maximum:20}
  validates :company_name, presence:true, length: {minimum:3, maximum:50}
  validates :designation, presence:true, length:{minimum:5, maximum:30}
end

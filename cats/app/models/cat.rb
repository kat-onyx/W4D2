# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :string           not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord

  validates :birth_date, :color, :name, :description, presence: true
  validate :sex_validation


  has_many :cat_rental_requests,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest


  def sex_validation
    if sex.length > 1
      errors[:sex] << "Must be length 1"
    elsif :sex != 'M' || :sex != 'F'
      errors[:sex] << "Must be either M or F"
    end
  end
end

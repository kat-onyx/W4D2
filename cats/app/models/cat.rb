class Cat < ApplicationRecord

  validates :birth_date, :color, :name, :description, presence: true
  validate :sex

  def sex_validation
    if sex.length > 1
      errors[:sex] << "Must be length 1"
    elsif :sex != 'M' || :sex != 'F'
      errors[:sex] << "Must be either M or F"
    end
  end 
end

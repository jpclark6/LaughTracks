class Comedian < ActiveRecord::Base
  has_many :specials

  def self.average_age
    Comedian.average(:age)
  end

  def self.cities
    Comedian.select(:city).distinct.pluck(:city)
  end

end

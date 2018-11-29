class Comedian < ActiveRecord::Base
  has_many :specials

  def self.average_age(age)
    if age
      return age.to_f
    else
      Comedian.average(:age)
    end
  end

  def self.cities(age)
    if age
      Comedian.where("age = #{age}").select(:city).distinct.pluck(:city)
    else
      Comedian.select(:city).distinct.pluck(:city)
    end
  end

end

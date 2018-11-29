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
      Comedian.where("age = #{age}").distinct.pluck(:city)
    else
      Comedian.select(:city).distinct.pluck(:city)
    end
  end

  def self.sort(params)
    if params[:age]
      comedians = Comedian.where("age = #{params[:age]}")
    elsif params[:sort]
      comedians = Comedian.all.order("#{params[:sort]}")
      if params[:sort] == "name"
        comedians = Comedian.all.order("last_name asc, first_name asc")
      end
    else
      comedians = Comedian.all
    end
    comedians
  end

end

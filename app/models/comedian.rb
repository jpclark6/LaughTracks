class Comedian < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true

  has_many :specials

  def self.average_age(comedians)
    comedians.average(:age)
  end

  def self.cities(age)
    if age
      where("age = #{age}").distinct.pluck(:city)
    else
      select(:city).distinct.pluck(:city)
    end
  end

  def self.sort(params)
    if params[:age]
      comedians = where("age = #{params[:age]}").order("last_name asc, first_name asc")
    elsif params[:sort]
      comedians = Comedian.all.order("#{params[:sort]}, last_name asc, first_name asc")
      if params[:sort] == "name"
        comedians = Comedian.all.order("last_name asc, first_name asc")
      end
    else
      comedians = Comedian.all
    end
    comedians
  end

end

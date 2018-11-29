class Special < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :comedian

  def self.average_length(age)
    if age
      Special.joins(:comedian).where("age = #{age}").average(:length) / 60
    else
      Special.average(:length) / 60
    end
  end

  def self.tot_specials(age)
    if age
      Special.joins(:comedian).where("age = #{age}").count
    else
      Special.all.count
    end
  end

end

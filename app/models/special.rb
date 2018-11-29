class Special < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :comedian

  def self.average_length(age)
    if age
      joins(:comedian).where("age = #{age}").average(:length) / 60
    else
      average(:length) / 60
    end
  end

  def self.tot_specials(age)
    if age
      joins(:comedian).where("age = #{age}").count
    else
      count
    end
  end

end

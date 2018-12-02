class Special < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :comedian

  def self.average_length(age)
    if age
      if joins(:comedian).where("age = #{age}").empty?
        return 0
      else
        joins(:comedian).where("age = #{age}").average(:length) / 60
      end
    else
      average(:length) / 60 if average(:length)
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

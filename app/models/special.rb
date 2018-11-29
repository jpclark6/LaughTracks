class Special < ActiveRecord::Base
  belongs_to :comedian

  def self.average_length
    Special.average(:length) / 60
  end

end

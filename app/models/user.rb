class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.nausea > self.happiness
      moood = "sad"
    elsif self.happiness > self.nausea
      mood = "happy"
    else
      mood = "neutral"
    end
  end

end

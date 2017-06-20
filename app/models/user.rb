class User < ActiveRecord::Base
  # write associations here
  #validates :name, :happiness, :nausea, :height, :tickets, presence: true
  has_secure_password

  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.happiness - self.nausea > 0
      "happy"
    else
      "sad"
    end
  end
end

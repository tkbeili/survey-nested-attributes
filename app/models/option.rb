class Option < ActiveRecord::Base
  belongs_to :question

  validates_length_of :title, minimum: 3

  def self.say_hi
    puts "Hiii"
  end

end
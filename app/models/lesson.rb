class Lesson < ActiveRecord::Base
	validates :lesson, :presence => true, :length => {:maximum => 900, :minimum => 3 }
	validates :author, :presence => true, :length => {:maximum => 100, :minimum => 3}
end

class LessonsController < ApplicationController
	def index
		@lesson = Lesson.order("RANDOM()").first
	end
end

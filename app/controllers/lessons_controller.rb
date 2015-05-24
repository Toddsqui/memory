class LessonsController < ApplicationController
	def index
		@lesson = Lesson.order("RANDOM()").first
	end

	def new
		@lesson = Lesson.new
	end
end

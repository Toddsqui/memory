class LessonsController < ApplicationController
	def index
		@lesson = Lesson.order("RANDOM()").first
	end

	def new
		@lesson = Lesson.new
	end

	def create
		Lesson.new(lesson_params)
		redirect_to root_path
	end

	private

	def lesson_params
		params.require(:lesson).permit(:lesson, :author)
	end
end

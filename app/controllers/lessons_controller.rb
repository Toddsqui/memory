class LessonsController < ApplicationController
	def index
		@lesson = Lesson.order("RANDOM()").first
	end

	def new
		@lesson = Lesson.new
	end

	def create
		@lesson = Lesson.create(lesson_params)
		if @lesson.invalid?
			flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
		end
		redirect_to root_path
	end

	def about
	end

	def resources
	end

	def contact
	end
	

	private

	def lesson_params
		params.require(:lesson).permit(:lesson, :author)
	end
end

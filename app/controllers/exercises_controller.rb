class ExercisesController < ApplicationController
  before_action :permit_params, except: :index

	def index
		@exercise = Exercise.new
	end

	def back
		@exercise = Exercise.new(@attr)
		render :index
	end

	def confirm
		@exercise = Exercise.new(@attr)
		if @exercise.invalid?
			render :index
		end
	end


	private

	def permit_params
		@attr = params.require('exercise').permit(:url1, :url2, :url3, :url4)
	end
end

class DoctorsController < ApplicationController
  def index

    @doctor = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
  end

  def edit
  end
end

class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    def new
        @doctor = Doctor.new(doctor_params)
    end

    def create
        @doctor = Doctor.new(doctor_params)
        @doctor.save
        redirect_to doctor_path(@doctor)
    end

    def edit
        @doctor = Doctor.find(params[:id])
    end

    def update
        @doctor = Doctor.find(params[:id])
        @doctor.update(doctor_params)
        redirect_to doctor_path(@doctor)
    end

    def destroy
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
    end
end

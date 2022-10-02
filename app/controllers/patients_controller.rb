class PatientsController < ApplicationController
  before_action :authenticate_user!
  def index
    @patients=Patient.all
  end
  def show
    @patient=Patient.find(params[:id])
  end
  def new
    @patient=Patient.new
  end
  # debugger
  def create
    @patient=Patient.create(patient_params)

    if @patient.save
      redirect_to @patient
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def patient_params
    params.permit(:name)

  end

end

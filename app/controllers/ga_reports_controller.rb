class GaReportsController < ApplicationController
  before_action :set_ga_report, only: [:show, :edit, :update, :destroy]

  # GET /ga_reports
  # GET /ga_reports.json
  def index
    @ga_reports = GaReport.all
  end

  # GET /ga_reports/1
  # GET /ga_reports/1.json
  def show
  end

  # GET /ga_reports/new
  def new
    @ga_report = GaReport.new
  end

  # GET /ga_reports/1/edit
  def edit
  end

  # POST /ga_reports
  # POST /ga_reports.json
  def create
    @ga_report = GaReport.new(ga_report_params)

    respond_to do |format|
      if @ga_report.save
        format.html { redirect_to @ga_report, notice: 'Ga report was successfully created.' }
        format.json { render :show, status: :created, location: @ga_report }
      else
        format.html { render :new }
        format.json { render json: @ga_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ga_reports/1
  # PATCH/PUT /ga_reports/1.json
  def update
    respond_to do |format|
      if @ga_report.update(ga_report_params)
        format.html { redirect_to @ga_report, notice: 'Ga report was successfully updated.' }
        format.json { render :show, status: :ok, location: @ga_report }
      else
        format.html { render :edit }
        format.json { render json: @ga_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ga_reports/1
  # DELETE /ga_reports/1.json
  def destroy
    @ga_report.destroy
    respond_to do |format|
      format.html { redirect_to ga_reports_url, notice: 'Ga report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ga_report
      @ga_report = GaReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ga_report_params
      params[:ga_report]
    end
end

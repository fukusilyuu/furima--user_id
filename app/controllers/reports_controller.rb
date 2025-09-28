class ReportsController < ApplicationController
  def index
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to item_path(@report_id)
    else
      render :new
    end
  end


  private
  def report_params
    params.require(:report).permit(:report_content)
  end
end

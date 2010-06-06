class IssuesController < ApplicationController

  def index
    if params[:state].blank?
      @issues = Issue.order_by([[:population, :desc],[:original_id, :asc]])
    else
      @issues = Issue.where(:state => params[:state]).order_by([[:population, :desc],[:original_id, :asc]])
    end
  end


end
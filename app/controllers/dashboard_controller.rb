class DashboardController < ApplicationController

  def index
    @issues = Issue.order_by([[:population, :desc],[:original_id, :asc]])
  end

end
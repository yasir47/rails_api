class Api::Dashboard::DashboardController < ApplicationController

  def filters
    render json: DashboardView.cases_and_assets_filters
  end

end

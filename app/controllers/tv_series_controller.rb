# frozen_string_literal: true

class TvSeriesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: TvSeriesDatatable.new(params) }
    end
  end
end

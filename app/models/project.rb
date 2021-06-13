# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :actor
  belongs_to :tv_series
end

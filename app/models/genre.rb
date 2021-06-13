# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :tv_series
  validates :title, presence: true
end

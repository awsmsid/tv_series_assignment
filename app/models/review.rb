# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :tv_series
  belongs_to :user
  validates :star, :review_message, presence: true
end

# frozen_string_literal: true

class TvSeries < ApplicationRecord
  has_many :projects
  has_many :actors, through: :projects
  has_and_belongs_to_many :directors
  has_many :reviews
  belongs_to :genre
  belongs_to :country
  validates :name, presence: true
end

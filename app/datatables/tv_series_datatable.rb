# frozen_string_literal: true

class TvSeriesDatatable < AjaxDatatablesRails::ActiveRecord
  def view_columns
    @view_columns ||= {
      name: { source: 'TvSeries.name' },
      number_of_seasons: { source: 'TvSeries.number_of_seasons', searchable: false },
      date_of_first_release: { source: 'TvSeries.date_of_first_release', searchable: false },
      genre: { source: 'Genre.title' },
      actor: { source: 'Actor.name' },
      director: { source: 'Director.name' },
      shoot_location: { source: 'Project.shoot_location', searchable: false },
      country: { source: 'Country.name', searchable: false },
      stars: { source: 'Review.star', searchable: false }
    }
  end

  def data
    records.map do |record|
      {
        name: record.name,
        number_of_seasons: record.number_of_seasons,
        date_of_first_release: record.date_of_first_release,
        genre: record.genre.title,
        actor: record.actors.map(&:name).join(', '),
        director: record.directors.map(&:name).join(', '),
        shoot_location: record.projects.map(&:shoot_location).uniq.join(', '),
        country: record.country.name,
        stars: record.reviews.sum('star') / record.reviews.length
      }
    end
  end

  def get_raw_records
    TvSeries.all.eager_load(:genre, :actors, :directors, :country, :reviews)
  end
end

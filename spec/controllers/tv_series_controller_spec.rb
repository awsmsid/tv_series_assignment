# frozen_string_literal: true

require 'rails_helper'
describe TvSeriesController do
  let(:tv_series) { instance_double('tv_series') }
  let(:params) do
    {
      'draw': '1',
      'columns': {
        '0': {
          'data': 'name',
          'name': '',
          'searchable': 'true',
          'orderable': 'true',
          'search': {
            'value': '',
            'regex': 'false'
          }
        },
        '1': {
          'data': 'number_of_seasons',
          'name': '',
          'searchable': 'true',
          'orderable': 'true',
          'search': {
            'value': '',
            'regex': 'false'
          }
        },
        '2': {
          'data': 'date_of_first_release',
          'name': '',
          'searchable': 'true',
          'orderable': 'true',
          'search': {
            'value': '',
            'regex': 'false'
          }
        },
        '3': {
          'data': 'genre',
          'name': '',
          'searchable': 'true',
          'orderable': 'true',
          'search': {
            'value': '',
            'regex': 'false'
          }
        },
        '4': {
          'data': 'actor',
          'name': '',
          'searchable': 'true',
          'orderable': 'true',
          'search': {
            'value': '',
            'regex': 'false'
          }
        },
        '5': {
          'data': 'director',
          'name': '',
          'searchable': 'true',
          'orderable': 'true',
          'search': {
            'value': '',
            'regex': 'false'
          }
        },
        '6': {
          'data': 'shoot_location',
          'name': '',
          'searchable': 'true',
          'orderable': 'true',
          'search': {
            'value': '',
            'regex': 'false'
          }
        },
        '7': {
          'data': 'country',
          'name': '',
          'searchable': 'true',
          'orderable': 'true',
          'search': {
            'value': '',
            'regex': 'false'
          }
        },
        '8': {
          'data': 'stars',
          'name': '',
          'searchable': 'true',
          'orderable': 'true',
          'search': {
            'value': '',
            'regex': 'false'
          }
        }
      },
      'order': {
        '0': {
          'column': '0',
          'dir': 'asc'
        }
      },
      'start': '0',
      'length': '10',
      'search': {
        'value': '',
        'regex': 'false'
      },
      '_': '1623586241425'
    }
  end

  before do
    allow(TvSeriesDatatable).to receive(:new).with(params).and_return(tv_series)
  end

  describe 'GET index' do
    subject { get :index }

    context 'when success' do
      it { is_expected.to have_http_status(:ok) }
    end
  end
end

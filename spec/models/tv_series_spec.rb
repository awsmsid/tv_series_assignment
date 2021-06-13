# frozen_string_literal: true

require 'rails_helper'

describe TvSeries do
  let(:name) { 'test' }
  let(:tv_series) do
    described_class.new(name: name)
  end

  describe 'validate' do
    subject { tv_series.valid? }

    context 'with empty name' do
      let(:name) { nil }

      it { is_expected.to eq false }
    end
  end
end

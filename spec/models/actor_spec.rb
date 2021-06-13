# frozen_string_literal: true

require 'rails_helper'

describe Actor do
  let(:name) { 'test' }
  let(:actor) do
    described_class.new(name: name)
  end

  describe 'validate' do
    subject { actor.valid? }

    context 'with empty name' do
      let(:name) { nil }

      it { is_expected.to eq false }
    end
  end
end

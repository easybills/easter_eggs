require 'spec_helper'

RSpec.shared_context 'an easter egg' do
  %w(en pt-BR).each do |locale|
    context "when locale is '#{locale}'" do
      before { I18n.locale = locale }

      it { expect(described_class.perform(query)).to eq({
        reference: reference,
        message: EasterEggs::Universe.t(reference)
      }) }
    end
  end
end

RSpec.describe EasterEggs::Search do
  describe '.perform' do
    context do
      let(:query)     { 'Star Wars VII' }
      let(:reference) { EasterEggs::Universe::STAR_WARS }
      it_behaves_like 'an easter egg'
    end

    context do
      let(:query)     { 'Force Awakens movie' }
      let(:reference) { EasterEggs::Universe::STAR_WARS }
      it_behaves_like 'an easter egg'
    end

    context do
      let(:query)     { 'tickets for Rogue One' }
      let(:reference) { EasterEggs::Universe::STAR_WARS }
      it_behaves_like 'an easter egg'
    end

    context do
      let(:query)     { 'Super Mario Bros 3' }
      let(:reference) { EasterEggs::Universe::MARIO }
      it_behaves_like 'an easter egg'
    end

    context do
      let(:query)     { 'New Breaking Bad Blu-ray box' }
      let(:reference) { EasterEggs::Universe::BREAKING_BAD }
      it_behaves_like 'an easter egg'
    end
  end
end

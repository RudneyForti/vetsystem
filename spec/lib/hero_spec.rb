require 'spec_helper'
require 'hero'

describe Hero do
    it 'has a sword' do
        hero = Hero.new
        expect(hero.weapon).to eq('sword')
    end
end
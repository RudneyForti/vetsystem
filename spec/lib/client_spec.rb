require 'spec_helper'
require 'client'

describe Client do
    it 'has a bird' do
        client = Client.new
        expect(client.pet).to eq('bird')
    end
end
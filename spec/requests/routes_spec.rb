require 'spec_helper'
require 'rails_helper'

describe StatusesController do
    describe "routing" do

    it "routes to #index" do
        get("index").should route_to("statuses#index")
    end

  end
end
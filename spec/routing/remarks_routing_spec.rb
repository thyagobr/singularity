require "rails_helper"

RSpec.describe RemarksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/remarks").to route_to("remarks#index")
    end

    it "routes to #new" do
      expect(:get => "/remarks/new").to route_to("remarks#new")
    end

    it "routes to #show" do
      expect(:get => "/remarks/1").to route_to("remarks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/remarks/1/edit").to route_to("remarks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/remarks").to route_to("remarks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/remarks/1").to route_to("remarks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/remarks/1").to route_to("remarks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/remarks/1").to route_to("remarks#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe FrameworksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/frameworks").to route_to("frameworks#index")
    end

    it "routes to #new" do
      expect(:get => "/frameworks/new").to route_to("frameworks#new")
    end

    it "routes to #show" do
      expect(:get => "/frameworks/1").to route_to("frameworks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/frameworks/1/edit").to route_to("frameworks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/frameworks").to route_to("frameworks#create")
    end

    it "routes to #update" do
      expect(:put => "/frameworks/1").to route_to("frameworks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/frameworks/1").to route_to("frameworks#destroy", :id => "1")
    end

  end
end

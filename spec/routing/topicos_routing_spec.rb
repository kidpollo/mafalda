require "spec_helper"

describe TopicosController do
  describe "routing" do

    it "routes to #index" do
      get("/topicos").should route_to("topicos#index")
    end

    it "routes to #new" do
      get("/topicos/new").should route_to("topicos#new")
    end

    it "routes to #show" do
      get("/topicos/1").should route_to("topicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/topicos/1/edit").should route_to("topicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/topicos").should route_to("topicos#create")
    end

    it "routes to #update" do
      put("/topicos/1").should route_to("topicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/topicos/1").should route_to("topicos#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe TransacsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/transacs").to route_to("transacs#index")
    end

    it "routes to #new" do
      expect(get: "/transacs/new").to route_to("transacs#new")
    end

    it "routes to #show" do
      expect(get: "/transacs/1").to route_to("transacs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/transacs/1/edit").to route_to("transacs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/transacs").to route_to("transacs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/transacs/1").to route_to("transacs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/transacs/1").to route_to("transacs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/transacs/1").to route_to("transacs#destroy", id: "1")
    end
  end
end

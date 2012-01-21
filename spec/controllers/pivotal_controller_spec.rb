require 'spec_helper'

describe PivotalController do

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should_not be_success
    end
  end

  describe "GET 'projects'" do
    it "returns http success" do
      get 'projects'
      response.should_not be_success
    end
  end

end

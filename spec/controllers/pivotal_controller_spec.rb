require 'spec_helper'
require 'digest/md5'


describe PivotalController do
  
  
  before(:each) do
    user = Factory(:user)
    request.env['warden'].stub :authenticate! => user
    controller.stub :current_user => user
  end
  
  describe "GET 'login_pivotal'" do
    it "returns http success" do
<<<<<<< HEAD
      get 'login'
      response.should_not be_success
    end
  end

  describe "GET 'projects'" do
    it "returns http success" do
      get 'projects'
      response.should_not be_success
=======
      get 'login_pivotal'
      response.should be_success
    end
  end

  describe "POST 'auth_pivotal'" do
    before(:each) do
      request.session = {:last_path => root_url }
    end
    
    it "should redirect to the page you requested if successful" do
      PivotalTracker::Client.stub(:token).and_return(Digest::MD5.hexdigest("Hello World\n"))
      PivotalUser.any_instance.should_receive(:create) #.with({"token"=>"e59ff97941044f85df5297e1c302d260"})
      post 'auth_pivotal', :params => {:user_name=>"test", :password=>"pass"}
      response.response_code.should == 302
      response.should redirect_to :root
    end
    it "should redirect you back to the login page if failed with message of failure" do
      PivotalTracker::Client.stub(:token).and_return(nil)
      #PivotalUser.any_instance.should_receive(:create) #.with({"token"=>"e59ff97941044f85df5297e1c302d260"})
      post 'auth_pivotal' #, :params => {:user_name=>"test", :password=>"pass"}
      response.response_code.should == 302
      response.should redirect_to :pivotal
>>>>>>> 21df3f37678df4a622c5f8aacba3e0d8e7b1edd8
    end
  end
end

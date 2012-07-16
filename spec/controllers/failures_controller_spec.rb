#require 'failure.rb'
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Uhoh::FailuresController do
  before(:each) do
    @routes = Uhoh::Engine.routes
  end
  
  describe "routing match with actions" do
    it "should route for root" do
      { :get => "/" }.should route_to(:controller => "uhoh/failures",:action => "index")
    end
    it "should route for simulate" do
      {:get => "/failures/sim"}.should route_to(:controller => "uhoh/failures", :action => "sim")
    end
  end
  describe Uhoh::FailuresController do
    it "should render index on successful save" do
      @f = Uhoh::Failure.new(:message=>"a")
      post :create, :failure=>{:message=>"This message has length greater than 5"}
      response.should render_template('index')
    end
    it "should render new on unsuccessful save" do
      post :create, :failure=>{:message=>"m<5"}
      response.should render_template('new')
    end
  end
end
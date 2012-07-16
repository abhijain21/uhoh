require_dependency "uhoh/application_controller"

module Uhoh
  class FailuresController < ApplicationController
    def index
    	@failures=Failure.all
    end
    def create
      @failure = Failure.new(params[:failure])
      respond_to do |f|
        if @failure.save
          @failures = Failure.all
          f.html {render "index"}
        else
          f.html {render action: "new"}
        end
      end
    end
    def new
      @failure = Failure.new
      respond_to do |format|
        format.html
      end
    end
    def show
      @failures=Failure.all
      render action: "index"
    end
    def destroy
      @f = Failure.find(params[:id])
      @f.destroy
      @failures = Failure.all
      redirect_to root_url
    end
    def sim
      raise "Sample Exception. This has been logged in the DB of your parent app!"
      redirect_to "root"
    end
  end
    
end

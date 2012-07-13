class SimulateController < ApplicationController
  def failure
  	raise "simulating an exception in failure action"
  end
end

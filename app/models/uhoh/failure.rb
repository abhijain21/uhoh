module Uhoh
  class Failure < ActiveRecord::Base
    attr_accessible :message
  end
end

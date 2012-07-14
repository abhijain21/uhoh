module Uhoh
  class Failure < ActiveRecord::Base
    attr_accessible :message
    validates :message, :presence => true,
                      :length => { :minimum => 5 }  end
end

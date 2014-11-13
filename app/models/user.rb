class User < ActiveRecord::Base
  serialize :column, JSON
end
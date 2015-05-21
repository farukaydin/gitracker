class Event < ActiveRecord::Base
  belongs_to :tracked_repo
end

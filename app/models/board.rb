class Board < ApplicationRecord
  belongs_to :user

  # include PgSearch


  #   # pg_search_scope :search, against: [:accomplishment, :challenges, :task, :resources]



  # pg_search_scope :search_by_boards, :against => [:accomplishment, :challenges, :task, :resources],
  #   using: {
  #     :tsearch => {:prefix => true}
  #   }

end
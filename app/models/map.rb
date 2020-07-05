class Map
  include Mongoid::Document

  field :details, type: String

  validates :details,  presence: true
end

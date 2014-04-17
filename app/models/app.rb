class App
  include Mongoid::Document

  field :title
  field :description
  field :status

  validates :title,:status, presence: true
end

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, :dependent => :destroy
  has_attached_file :image, :styles => { large: "1000x500>", medium: "750x375>", thumb: "400x200>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  delegate :name, to: :category, prefix: true, allow_nil: true
  scope :breakfast, -> { where(category_id: 1) }
  scope :lunch, -> { where(category_id: 2) }
  scope :dinner, -> { where(category_id: 3) }
  scope :dessert, -> { where(category_id: 4) }
  scope :drinks, -> { where(category_id: 5) }
  scope :appetizers, -> { where(category_id: 6) }
end

class Tournament < ActiveRecord::Base
	belongs_to :user
	has_many :poules
	accepts_nested_attributes_for :poules, reject_if: :all_blank, allow_destroy: true
	validates :title, :description, :image, presence: true
	has_attached_file :image, styles: {medium: "300x300>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end

class Film < ActiveRecord::Base
  has_many :videos
  validates :title, :description, :thumbnail_file_name, :presence => true
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_attached_file :thumbnail, :default_url => "/system/films/default_film.jpg"
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/


  def slug_candidates
    [
      :title,
      [:title, :id]
    ]
  end

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end

end

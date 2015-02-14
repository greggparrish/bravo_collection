class Document < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

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

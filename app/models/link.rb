class Link < ApplicationRecord
  include Rails.application.routes.url_helpers

  validates :url, :slug, presence: true

  before_validation :generate_unique_slug

  def generate_unique_slug
    self.slug = SecureRandom.uuid[0..7]
  end

  def shortend_url
    url_for({ action: 'show', slug: slug, controller: 'link' })
  end

  def self.shorten(url, slug = '')
    link = Link.create(url: url, slug: slug)
    { link: link.shortend_url }
  end
end

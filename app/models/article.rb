class Article < ActiveRecord::Base
  validates :title, :body, :released_at, presence: true
  validates :title, length: { maximum: 200 }
  before_validation :clear_expired_at

  scope :open, -> {
    now = Time.current
    where("released_at <= ? AND (? < expired_at OR " + "expired_at IS NULL)", now, now)
  }
end

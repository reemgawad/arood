class Meter < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_by_pattern,
                  against: [:pattern],
                  using: {
                    tsearch: { prefix: true }
                  }
end

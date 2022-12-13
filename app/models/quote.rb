class Quote < ApplicationRecord
    validates :name, presence: true
    scope :ordered, -> { order(id: :desc) }
    after_create_commit -> { broadcast_prepend_to "quotes", partial: "quotes/quote", locals: { quote: self }, target: "all_quotes" }
    after_destroy_commit -> { broadcast_remove_to "quotes", dom_id(self), target: "all_quotes" }
end

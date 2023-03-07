class Store < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: {only_integer: true, greater_than: 0 }

  validate :store_must_have_ether_men_or_women_apparel

  def store_must_have_ether_men_or_women_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:store, "Store have to be have ether mens or womens apparels.")
    end
  end

  has_many :employees
end

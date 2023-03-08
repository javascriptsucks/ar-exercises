class Store < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: {only_integer: true, greater_than: 0 }

  validate :store_must_have_ether_men_or_women_apparel



  before_destroy :make_sure_no_empty_store_can_not_be_destroyed

  has_many :employees

  private
    def store_must_have_ether_men_or_women_apparel
      if !mens_apparel.present? && !womens_apparel.present?
        errors.add(:store, "Store have to be have ether mens or womens apparels.")
      end
    end

    def make_sure_no_empty_store_can_not_be_destroyed
      if employees.any?
        errors.add(:base, "Store can not delete with employees")
        throw :abort

      end
    end
end

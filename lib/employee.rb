class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than: 40, less_than: 200 }
  after_create :generate_password_before_create


  private
    def random_passwrod_generate
      (0...10).map { (65 + rand(26)).chr }.join
    end

    def generate_password_before_create
      if password.blank?
        self.password = random_passwrod_generate()
      end
    end

end

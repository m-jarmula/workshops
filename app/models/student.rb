class Student < ActiveRecord::Base
  has_many :participations, dependent: :destroy
  has_many :subject_items, through: :participations  
  has_many :subject_item_notes, dependent: :destroy

  validates :first_name, :last_name, presence: true
  validate :birthdate_in_valid_range
                                 
  accepts_nested_attributes_for :subject_items
  
  protected
  
  def birthdate_in_valid_range
    self.errors.add(:birthdate, "is not valid") unless ((Time.now - 70.years)..(Time.now - 16.years)).include?(self.birthdate) and self.birthdate.present?
  end
end

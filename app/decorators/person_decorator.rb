class PersonDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def formatted_birthdate
    birthdate.try(:strftime, "%Y-%m-%d") || "---"
  end
end
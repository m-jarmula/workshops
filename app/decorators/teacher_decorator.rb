class TeacherDecorator < PersonDecorator
  def full_name_with_title
    "#{first_name} #{last_name} [#{academic_title}]"
  end
end

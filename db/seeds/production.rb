puts "Seeds: start"
TEACHER_TITLES = %w(Dr. Prof. TA)
User.create!(email: 'admin@admin.com',password: 'adminadmin')
FIRSTNAMES = ["Adam", "Martyna","Małgorzata", "Justyna", "Jacenty", "Przemysław", "Rafał", "Franciszka", "Władysława", "Krzysztof"]
LASTNAMES = ["Miałkowski", "Woźniak", "Zając", "Kozłowski", "Kaczmarek", "Kalinowski", "Czerwinski", "Górski", "Adamski", "Tomaszewski"]
SUBJECTS = %w(Historia Chemia Biologia Informatyka Matematyka)

3.times do
  Teacher.create!(
    first_name: FIRSTNAMES.sample,
    last_name: LASTNAMES.sample,
    academic_title: TEACHER_TITLES.sample
  )
end

teachers = Teacher.all
SUBJECTS.each do |subject_name|
  SubjectItem.create!(
    title: subject_name,
    teacher: teachers.sample
  )
end

25.times do
  Student.create!(
    first_name: FIRSTNAMES.sample,
    last_name: LASTNAMES.sample
  )
end

students = Student.all
SubjectItem.all.each do |subject_item|
  subject_item.students << students.sample(rand(1..4))
end

SubjectItem.all.each do |subject_item|
  subject_item.students.each do |student|
    rand(1..5).times do
      subject_item.subject_item_notes << SubjectItemNote.create(student: student,
                                                                subject_item: subject_item,
                                                                value: rand(1..6))
    end
  end
end

puts "Seeds: done"

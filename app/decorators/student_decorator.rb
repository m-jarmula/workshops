class StudentDecorator < PersonDecorator
  def avg_notes(subject_item)
    "%.2f" % (subject_item.subject_item_notes.average(:value) || 0)
  end
end

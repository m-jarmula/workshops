class AddStudentIdToSubjectItemNotes < ActiveRecord::Migration
  def change
    change_table :subject_item_notes do |t|
      t.references :student
    end
  end
end

class CreateSubjectItems < ActiveRecord::Migration
  def change
    create_table :subject_items do |t|
      t.references :teacher
    end
  end
end

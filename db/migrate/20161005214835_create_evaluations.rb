class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :reviewer_id
      t.integer :reviewee_id

      t.timestamps

    end
  end
end

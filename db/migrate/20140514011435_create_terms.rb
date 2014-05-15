class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end

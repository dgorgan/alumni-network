class InitialSchema < ActiveRecord::Migration[5.0]
  def up
    create_table :admins do |t|
      t.references :user
      t.timestamps
    end

    create_table :mentors do |t|
      t.references :user
      t.string :description
      t.timestamps
    end

    create_table :mentees do |t|
      t.references :user
      t.string :description
      t.timestamps
    end

    create_table :courses do |t|
      t.string :institution
      t.text :description
      t.timestamps
    end

    create_table :mentor_courses do |t|
      t.references :mentor
      t.references :course
      t.integer :comfort_level
      t.text :remarks
      t.timestamps
    end

    create_table :mentee_courses do |t|
      t.references :mentee
      t.references :course
      t.integer :comfort_level
      t.text :remarks
      t.timestamps
    end

    create_table :help_categories do |t|
      t.string :name, null: false
      t.string :url
      t.timestamps
    end

    create_table :mentor_help_categories do |t|
      t.references :mentor
      t.references :help_category
      t.timestamps
    end

    create_table :mentee_help_categories do |t|
      t.references :mentee
      t.references :help_category
      t.timestamps
    end

  end

  def down
    drop_table :admins
    drop_table :mentors
    drop_table :mentees
    drop_table :mentor_courses
    drop_table :mentee_courses
    drop_table :courses
    drop_table :help_categories
    drop_table :mentor_help_categories
    drop_table :mentee_help_categories
  end
end

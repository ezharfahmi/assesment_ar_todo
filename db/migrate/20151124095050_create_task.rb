require_relative '../../config/application'

class CreateTask < ActiveRecord::Migration
    def change
      create_table :tasks do |t|
        t.string :taskname
        t.boolean :status , default: false
        t.datetime :created_at
        t.datetime :updated_at
      end
    end
end
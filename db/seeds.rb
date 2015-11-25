require 'faker'
require 'csv'

require_relative '../app/models/task'

class TasksImporter
  def self.import(filename)
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      attributes = {}
      row.each do |field, value|
        attributes[field.to_sym] = value
      end
      Task.create!(attributes)
    end
  end
end
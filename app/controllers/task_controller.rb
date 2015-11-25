require_relative '../../config/application'
require_relative '../models/task.rb'

class TaskController

  attr_accessor :id, :taskname, :status

  def self.list_all
    Task.all
  end

  def self.taskname(id)
    task = Task.find(id)
    task[:taskname]
  end

  def self.add(taskname)
    Task.create(taskname: taskname)
  end

  def self.delete(id)
    Task.delete(id)
  end

  def self.task_complete
    # Task.find(:all, :condition => [status: true])
    Task.where(status: true)
  end

  def self.update(id)
    task = Task.find(id)
    task[:status] = true
    task.save
  end

end

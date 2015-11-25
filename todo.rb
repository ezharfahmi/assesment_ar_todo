# Pre-configurations (Do not change)
require_relative 'config/application'
require_relative 'app/controllers/task_controller'
require_relative 'app/models/task'
require_relative 'app/views/printer'

# Your Code begins from this line onwards #
  # def list
  #   list = TaskController.list_all
  #   puts "========== To do list ========== "
  #   list.each do |task|
  #     if task[:status] == true
  #       puts "#{task[:id]}. #{task[:taskname]} ---→ Checked! ✔︎"
  #     elsif task[:status] == false
  #       puts "#{task[:id]}. #{task[:taskname]} ---→ Get Your Shit Done! ✖︎"
  #     end
  #   end
  # end
a = Printer.new

input = ARGV

  if input[0] == "list"
    a.list

  elsif input[0] == "add"
    TaskController.add(input[1..-1].join(" "))
    puts "[#{input[1..-1].join(" ")}] have been added to your Todo list."

  elsif input[0] == "delete"
    puts "[#{TaskController.taskname(input[1].to_i)}] have been deleted from your Todo list."
    TaskController.delete(input[1].to_i)

  elsif input[0] == "complete"
    TaskController.update(input[1].to_i)
    a.list

  else
    puts "Invalid Input"
  end

# app = Printer.interface
# p app

class Printer
	# def self.interface
 #    puts "================= TODO LIST ================="
 #    puts " Select your choice"
 #    puts "1 - List down the todo list"
 #    puts "2 - add"
 #    puts "3 - delete"
 #    puts "4 - update the status if completed"

 #    choice = gets.chomp

 #    if choice == '1'
 #      list

 #    elsif choice == '2'
 #      puts "What do you want to add?"
 #      newlist = gets.chomp
 #      TaskController.add(newlist) #(input[1..-1].join(" "))
 #      p "[#{newlist}] have been added to your Todo list."

 #    elsif choice == '3'
 #      puts "Put the id of the list you want to delete"
 #      newdelete = gets.chomp
 #      p "Todo list with the ID [#{newdelete}] have been deleted from your Todo list."
 #      TaskController.delete(newdelete)

 #    elsif choice == '4'
 #      puts "Put the id of the list you want to set it as completed"
 #      newupdate = gets.chomp
 #      TaskController.update(newupdate)
 #      p "[#{newupdate}] id have been set to complete."

 #    else
 #      puts "Invalid Input"
 #    end
	# end

  def list
    list = TaskController.list_all
    puts "========== To do list ========== "
    list.each do |task|
      if task[:status] == true
        puts "#{task[:id]}. #{task[:taskname]} ---→ Checked! ✔︎"
      elsif task[:status] == false
        puts "#{task[:id]}. #{task[:taskname]} ---→ Get Your Shit Done! ✖︎"
      end
    end
  end


end


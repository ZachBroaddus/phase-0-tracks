# GAME COLLECTION MANAGER
# This program will help track your retro games collection!

# Include gem(s)
require 'sqlite3'

# Create SQLite3 Database
db = SQLite3::Database.new("game_collection.db")

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS games (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    price REAL,
    game_dev VARCHAR(255),
    cib BOOLEAN,
    is_new BOOLEAN
  )
SQL

db.execute(create_table)

# Methods (CRUD)

# Create a game record
# Input: db, name, price, game_dev, cib, is_new
# Output: database with record added
# Takes user input and uses it to add a new game record to the database
def create(db, name, price, game_dev, cib, is_new)
  db.execute("INSERT INTO games (name, price, game_dev, cib, is_new) 
  VALUES (?, ?, ?, ?, ?)", [name, price, game_dev, cib, is_new])
end

# Read a game record
# Input: db, name
# Output: record for game selected by user
# Allows user to select game record and displays corresponding record
def read(db, name)
  game_info = db.execute("SELECT name, price, game_dev, cib, is_new FROM games WHERE name=(?)", [name])
  puts "Name--------------Price-------------Developer---------CIB---------------New"
  game_info.each do |array| 
    array.each do |item|
      print "#{item}".ljust(18)      
    end
  print "\n"
  end
end

# Update a game record
# Input: db, game_name, value_to_update, new_value
# Output: updated record
# Allows user to select a game to update by game name, allows them to select which 
# piece of data they would like to update, and takes the updated value
def update(db, game_name, value_to_update, new_value)
  db.execute("UPDATE games SET #{value_to_update}=#{new_value} WHERE name=?", [game_name]) 
end

# Delete a game record
# Input: db, game_to_delete
# Output: database with record deleted
# Allows user to select game to delete by name, deletes game record
def delete(db, game_name)
  db.execute("DELETE FROM games WHERE name=?", [game_name])
end

# Show all game records
# Input: db
# Output: All game records
def display_all(db)
  game_info = db.execute("SELECT name, price, game_dev, cib, is_new FROM games")
  puts "Name--------------Price-------------Developer---------CIB---------------New"
  game_info.each do |array| 
    array.each do |item|
      print "#{item}".ljust(18)      
    end
  print "\n"
  end
end

# Test Driver code
# create(db, "Mega Man", 58.85, "Capcom", "false", "false")
# create(db, "Bork", 99.95, "Konami", "true", "false")
# create(db, "Stuff", 101.35, "Atari", "false", "true")
# create(db, "Gamez", 2.00, "Blizzard", "false", "false")
# read(db, "Mega Man")
# update(db, "Mega Man", "price", 200.00)
# delete(db, "Mega Man")
# display_all(db)

# User interface
# Ask user what they would like to do (CRUD) using a loop that allows the user to exit when finished.
  # If 'Create' prompt user for game record info, store in variables, call Create method and pass variables to method.
  # Provide user with confirmation that record was created.

  # If 'Read' ask user which record they would like to read. Allow user to specify by game name. Store input in variable.
  # Pass variable to Read method and display record for user.

  # If 'Update' allow user to enter name of game they would like to update and store as variable. 
  # Ask user which value they would like to update and store as variable.
  # Ask user for new value and store as variable. Pass variables to Update method to store new value. 
  # Provide user with confirmation that record was updated. 

  # If 'Delete' prompt user for name of game record they would like to remove and store as variable. 
  # Pass variable to delete method to remove game record.
  # Provide user with confirmation that record was deleted.

  # If 'Display All Records' call Show All Records method to display all game records.

  # If 'Exit' exit the program

  puts ""
  puts "=== Welcome to the Game Collection Manager! ==="
  puts ""

  user_input = ""
  until user_input == 'q'
    puts "What would you like to do?"
    puts ""
    puts "'c'-Create a record, 'r'-Read a record, 'u'-Update a record, 'd'-Delete a record, or 'all'-Show all records"
    puts "Enter 'q' to quit"
    user_input = gets.chomp

    if user_input == 'c'
      puts "Game name?: "
      game_name = gets.chomp
      puts "Game value in dollars?: "
      game_price = gets.chomp
      puts "Game developer?: "
      game_dev = gets.chomp
      puts "Is the game complete in box? (y/n): "
      cib = gets.chomp
        if cib == 'y'
          cib = "true"
        elsif cib == 'n'
          cib = "false"
        end
      puts "Is the game still sealed?(y/n): "
      is_new = gets.chomp
        if is_new == 'y'
          is_new = "true"
        elsif is_new == 'n'
          is_new = "false"
        end
      create(db, game_name, game_price, game_dev, cib, is_new)
    end
  end
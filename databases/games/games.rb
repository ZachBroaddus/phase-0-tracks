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
  db.execute("INSERT INTO games (name, price, game_dev, cib, is_new) VALUES (?, ?, ?, ?, ?)", [name, price, game_dev, cib, is_new])
end

# Read a game record
# Input: db, name
# Output: record for game selected by user
# Allows user to select game record and displays corresponding record

# Update a game record
# Input: db, game_name, value_to_update, new_value
# Output: updated record
# Allows user to select a game to update by game name, allows them to select which 
# piece of data they would like to update, and takes the updated value

# Delete a game record
# Input: db, game_to_delete
# Output: database with record deleted
# Displays all game records, allows user to select game to delete by index number, deletes game record

# Show all game records
# Input: db
# Output: displays all game records


# Test Driver code
create(db, "Mega Man", 58.85, "Capcom", "false", "false")

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
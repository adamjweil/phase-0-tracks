require 'sqlite3'

db = SQLite3::Database.open "RubySQL.db"	

p db.object
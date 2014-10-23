require 'sqlite3'


def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  array = db.execute("SELECT COUNT(*) FROM #{table_name};")
  array[0][0]
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  array = db.execute("SELECT name FROM artists ORDER BY name ASC;")
  array.map { |x| x[0] }
end

def love_tracks(db)
  # TODO: return array of love songs
  array = db.execute("SELECT name FROM tracks WHERE name LIKE '%love%';")
  array.map { |love| love[0] }
end

def long_tracks(db, min_length)
  # TODO: return tracks verifying: duration > min_length (minutes)
  array = db.execute("SELECT name FROM tracks WHERE milliseconds/1000 > #{min_length * 60 };")
  array.map { |a| a[0] }
end

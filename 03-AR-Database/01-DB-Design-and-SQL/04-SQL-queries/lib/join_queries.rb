require 'sqlite3'

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  array = db.execute("SELECT tr.name, alb.title, ar.name
              FROM tracks tr
              JOIN albums alb ON (tr.album_id = alb.id)
              JOIN artists ar ON (alb.artist_id = ar.id);")
  # p array[0]
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  # stat ={}

  array = db.execute("SELECT COUNT(t.name), ROUND(AVG(t.milliseconds/60000.0),2)
                      FROM tracks t
                      JOIN genres g ON (g.id = t.genre_id)
                      WHERE g.name = '#{genre_name}';").flatten

  return {category: "#{genre_name}", number_of_songs: array[0], avg_length: array[1]}
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 rock artists
  db.execute("SELECT a.name, COUNT(*) as c
   FROM tracks t
   JOIN albums al ON (al.id = t.album_id)
   JOIN artists a ON (a.id = al.artist_id)
   JOIN genres g ON (t.genre_id = g.id)
   WHERE g.name = '#{genre_name}'
   GROUP BY a.name
   ORDER BY c DESC
   LIMIT 5
   ;")
end

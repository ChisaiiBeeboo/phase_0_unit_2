# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode
# Define class Song
# Within the class define initialize which will take 2 arguments song and artist
# Also define method play which returns string that inlcudes interpolated song and it's artists.

# Define class Playlist, Playlist will initialize with an array of song titles which we'll assign the value of @content
# Define method add which takes an array of songs and adds it to the playlist @content
# Define num_of_tracks which will return the length of the array @content
# Define remove which takes one song argument and deletes it from content
# Define includes? which takes one argument and checks to see if that song is included in @contents array
# Define play_all which will return a string that shows all the songs playing
# Define display which will display the @contents array



# Initial Solution
class Song
	def initialize(song, artist)
		@song = song
		@artist = artist
	end

	def play
		p "Now playing #{@song} by #{@artist} "
	end
end

class Playlist
	def initialize(*song_titles)
		@content = song_titles
	end
	
	def add(*song)
		song.each { |x| @content << x}
	end

	def num_of_tracks
		@content.length
	end

	def remove(song)
		@content.delete(song)
	end

	def includes?(song)
		@content.include? song
	end

	def play_all
		p "Now playing: #{@content}"
	end

	def display
		p @content
	end
end

# Refactored Solution

# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
# p my_playlist.num_of_tracks 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5 
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

# Reflection 
Challenge was easy, I was able to read and understand the errors which guided me through the exercise.
I was successful in gathering the method names from the driver test code, which is half the work.
I enjoy EDD, it's much easier than writing code from scratch. 
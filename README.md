# Top Beatles Songs
-
##Synopsis
#####This program is a guessing game created with Ruby on Rails and a HAML template.
#####The user creates an account and logs in, then enters the names of various Beatles songs trying to guess my top 25.
#####Correct answers show underneath the search bar in an ordered list.

##Code Example
#####The following is code for the Songs controller.  The user inputs a guess in the search bar and the song title is used as a parameter to determine if the song exists in the database.  If it does, the song title is appended to the session which shows all previous correct guesses.  

```ruby
class SongsController < ApplicationController
  before_action :require_user, only: [:index, :show]

  def guess
  end

  def search
    @song = Song.find_by(song_params)

    unless session.key? :guessed_songs
      session[:guessed_songs] = []
    end

    session[:guessed_songs] << @song.title if !@song.nil?
  end

  def song_params
    params.require(:song).permit(:title)
  end
end

```

##Requirements
#####This program requires a current version of Ruby, which can be found at:

>#####https://www.ruby-lang.org/en/downloads/.

#####and a current version of Rails, which can be downloaded by:

>#####$ gem install rails

#####in the terminal.

#####Follow the instructions to download Ruby.

#####To run the program, download the repository and run in the terminal:
```
$ rake db:create
```
#####to create the database, followed by:
```
$ rake db:migrate
```
#####to create the database tables and:
```
$ rake db:seed
```
#####to seed the tables with my top 25 songs.

#####Lastly run:
```
$ rails s
```

#####to open up localhost:3000.  Go to 'localhost:3000/signup' to begin.

##Contributors
#####Nate Semmler

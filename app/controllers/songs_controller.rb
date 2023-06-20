
class SongsController < ApplicationController
  def index
    @songs = Song.all
  end


  def new

  end

  def create
      @song = Song.new(audio: params[:audio])


      puts "output is"
      puts @song.audio

      @song.audio.attach(params[:audio]) if params[:audio]

      if @song.save
        redirect_to songs_path
      else
        puts "We didnt save :-("
      end
     

  end

  

  def delete
    
  end

private

  def sanitize_filename(file_name)
    just_filename = File.basename(file_name)
    just_filename.sub(/[^\w\.\-]/,'_')
  end

  def songs_params
      params.require(:song).permit(:audio)
    end
end


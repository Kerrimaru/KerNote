class NotesController < ApplicationController

  def index
    @notes = Note.all
    respond_to do |format|
      format.json { render :json => @notes.as_json }
    end       
  end

  def show 
    @note = Note.find(params[:id])  
    respond_to do |format|
      format.json { render :json => @note.as_json }
    end   
  end

  # def '/notes/:id' 
  #   @note = Note.find(params[:id])
  #   content_type :json
  #   input_json = JSON.parse(request.body.read)
  #   @note.update_attributes(input_json["note"])
  #   JSON.generate(@note.as_json)
  # end



end

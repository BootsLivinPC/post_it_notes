class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update]

  def index
    @notes = current_user.notes
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = current_user.notes.new(note_params)
    if @note.save
      flash[:success] = "Note Created"
      redirect_to notes_path
    else
      flash[:error] = "Error #{@note.errors.full_messages.join("\n")}"
      render :new
    end
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to notes_path
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_path
  end

  private
    def note_params
      params.require(:note).permit(:author, :title, :body)
    end

    def set_note
      @note = current_user.notes.find(params[:id])
    end

end
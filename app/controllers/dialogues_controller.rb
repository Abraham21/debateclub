class DialoguesController < ApplicationController
  before_action :set_dialogue, only: [:show, :edit, :update, :destroy]

  # GET /dialogues
  # GET /dialogues.json
  def index
    @dialogues = Dialogue.all
  end
  
   def members
    @dialogues = Dialogue.all
  end

  # GET /dialogues/1
  # GET /dialogues/1.json
  def show
  end

  # GET /dialogues/new
  def new
    @dialogue = Dialogue.new
  end

  # GET /dialogues/1/edit
  def edit
  end

  # POST /dialogues
  # POST /dialogues.json
  def create
    @dialogue = Dialogue.new(dialogue_params)

    respond_to do |format|
      if @dialogue.save
        UserMailer.registration_confirmation(@dialogue).deliver
        format.html { redirect_to @dialogue, notice: 'Thanks for joining debate club!' }
        format.json { render :show, status: :created, location: @dialogue }
      else
        format.html { render :new }
        format.json { render json: @dialogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dialogues/1
  # PATCH/PUT /dialogues/1.json
  def update
    respond_to do |format|
      if @dialogue.update(dialogue_params)
        format.html { redirect_to @dialogue, notice: 'Member information was successfully updated.' }
        format.json { render :show, status: :ok, location: @dialogue }
      else
        format.html { render :edit }
        format.json { render json: @dialogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dialogues/1
  # DELETE /dialogues/1.json
  def destroy
    @dialogue.destroy
    respond_to do |format|
      format.html { redirect_to dialogues_members_url dialogues_members_path, notice: 'Member was removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dialogue
      @dialogue = Dialogue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dialogue_params
      params.require(:dialogue).permit(:name, :email)
    end
end

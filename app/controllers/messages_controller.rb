class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @user = current_user
    @messages_from_user = Message.where(from: @user.id)
    @messages_to_user = Message.where(to: @user.id)

    @all_messages = []

    @messages_from_user.each do |message|
      @all_messages << message
    end

    @messages_to_user.each do |message|
      @all_messages << message
    end

    @conversations = []
    @all_messages.each do |message|
      @conversations << message.from if message.from != @user.id
      @conversations << message.to if message.to != @user.id
    end

    @conversations.uniq!.map!(){ |id| User.find(id) }
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @user = current_user
    @to_user = User.find(params[:to_id])
    @all_messages = Message.where(from: [@user.id, @to_user.id], to: [@user.id, @to_user.id])

    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params)

    @message.save
    redirect_to "/messages/#{params[:message][:to]}"
    
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:message, :from, :to)
    end
end

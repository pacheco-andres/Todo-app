class TodoListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo_list, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @todo_lists = TodoList.where(user_id: current_user.id)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    respond_to do |format|
      format.html
      format.csv { send_data @todo_list.to_csv }
      format.pdf do
        render pdf: 'report',
        template: 'todo_lists/show.html.erb',
        layout: 'pdf.html'
      end
    end
  end

  # GET /users/new
  def new
    @todo_list = TodoList.new
    @todo_list.tasks.build
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @todo_list = TodoList.new(todo_list_params)

    respond_to do |format|
      if @todo_list.save
        format.html { redirect_to @todo_list, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @todo_list }
      else
        format.html { render :new }
        format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @todo_list.update(todo_list_params)
        format.html { redirect_to @todo_list, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_list }
      else
        format.html { render :edit }
        format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @todo_list.destroy
    respond_to do |format|
      format.html { redirect_to todo_lists_url, notice: 'TodoList was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_list
      @todo_list = TodoList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_list_params
      params.require(:todo_list).permit(:user_id, :name, tasks_attributes: [:id, :description])
    end
end

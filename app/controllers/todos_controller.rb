class TodosController < ApplicationController
  def index
    @todos_unfinished = Todo.unfinished
    @todos_finished = Todo.finished
    
    respond_to do |wants|
      wants.html
    end
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.find(params[:todo])

    redirect_to 'Todos/index'
  end

  def edit
  end

  def show
  end

end

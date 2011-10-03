class TodosController < ApplicationController
  def index
    @todos = Todo.find_all
    
    respond_to do |wants|
      wants.html
    end
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.find(:params[:id])

    redirect_to 'Todos/index'
  end

  def edit
  end

  def show
  end

end

class PeopleController < ApplicationController

  def index
    @people = Person.all
    flash.now[:notice] = "We have exactly #{@people.size} people available."
  end

  def show
    @person = Person.find(params[:id])
  end

  def new 
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:notice] = "Person was created successfully"
      redirect_to @person
    else
      render 'new'
    end
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(person_params)
      flash[:notice] = 'Person was updated'
      redirect_to @person
    else
      render 'edit'
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :email, :age)
  end

end
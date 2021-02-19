class PeopleController < ApplicationController

  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
    @articles = @person.articles
  end

  def new 
    @person = Person.new
  end

  def edit
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:notice] = "Welcome to the Alpha Blog #{@person.name}, you have successfully signed up"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    if @person.update(person_params)
      flash[:notice] = "Your account information was successfully updated"
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @person.destroy
    redirect_to people_path
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:name, :email, :password)
  end

end
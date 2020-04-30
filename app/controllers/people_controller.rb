class PeopleController < ApplicationController
  before_action :set_person, only: [:edit, :update, :destroy]
  before_action :clean_params, only: [:create, :update]

  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def edit
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to people_url, notice: 'Person was successfully created.'
    else
      render :new
    end
  end

  def update
    if @person.update(person_params)
      redirect_to people_url, notice: 'Person was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @person.destroy
    redirect_to people_url, notice: 'Person was successfully destroyed.'
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def clean_params
      params[:person][:aliases].reject!(&:empty?)
      params[:person][:movies_as_actor_ids].reject!(&:empty?)
      params[:person][:movies_as_director_ids].reject!(&:empty?)
      params[:person][:movies_as_producer_ids].reject!(&:empty?)
    end

    def person_params
      params.require(:person).permit(
        :first_name,
        :last_name,
        :aliases => [],
        :movies_as_actor_ids => [],
        :movies_as_director_ids => [],
        :movies_as_producer_ids => []
      )
    end
end

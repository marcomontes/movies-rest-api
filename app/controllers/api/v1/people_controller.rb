class Api::V1::PeopleController < Api::V1::BaseController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
    render json: @people
  end

  def show
    render json: @person
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person, status: :created
    else
      render json: @person.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    if @person.update(person_params)
      render json: @person, status: :updated
    else
      render json: @person.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @person.destroy
    render json: { message: 'Person was successfully destroyed.' }, status: :accepted
  end

  private
    def set_person
      @person = Person.find(params[:id])
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

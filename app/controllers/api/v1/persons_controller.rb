module Api
  module V1
    class PersonsController < ApplicationController
      def index
        peoples = Person.order('created_at');

        render json: {
          status: 'SUCCESS',
          message: 'Load persons',
          data: peoples
        }, status: :ok
      end

      def show
        people = Person.find(params[:id]);

        render json: {
          status: 'SUCCESS',
          message: 'Load person',
          data: people
        }, status: :ok
      end

			def create
				people = Person.new(person_params)

				if people.save
					render json: {
            status: 'SUCCESS',
            message: 'Saved person',
            data: people
          }, status: :ok

				else
					render json: {
            status: 'ERROR',
            message: 'Person not saved',
            data: people.erros
          }, status: :unprocessable_entity
				end
			end

			def destroy
				people = Person.find(params[:id])

				people.destroy

				render json: {
          status: 'SUCCESS',
          message: 'Deleted person',
          data: people
        }, status: :ok
			end

      private

      def person_params
        params.permit(:id, :name, :age)
      end
    end
  end
end

class SessionsController < ApplicationController
  before_action :set_session, only: %i[show update destroy]

  # POST /users/:user_email/sessions
  def create
    @session = Session.find_or_create_by(session_params)

    if @session.save
      render json: @session, status: :created, location: @session
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/:user_email/session
  def destroy
    @session.destroy
  end

  private

  def session_params
    { user: User.find_by(email: params[:email]) }
  end
end

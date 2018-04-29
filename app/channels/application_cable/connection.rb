module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    private

    def find_verified_user
      session = Session.find_by(id: request.params[:session_token])

      if session
        session.user
      else
        reject_unauthorized_connection
      end
    end

  end
end

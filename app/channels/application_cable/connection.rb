module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_author

    def connect
      self.current_author = find_verified_author
    end

    protected

    def find_verified_author
      if current_author = env["warden"].user
        current_author
      else
        reject_unauthorized_connection
      end
    end
  end
end

class OptimismChannel < ApplicationCable::Channel
  def subscribed
    stream_for current_author
  end
end

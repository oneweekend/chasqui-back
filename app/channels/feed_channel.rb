class FeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'feed_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive
    ActionCable.server.broadcast('feed_channel', 2314)
  end
end

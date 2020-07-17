Optimism.configure do |config|
  config.channel = ->(context) { OptimismChannel.broadcasting_for(context.current_author) }
end

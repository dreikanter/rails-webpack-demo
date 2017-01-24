namespace :sidekiq do
  desc 'Drop all enqueued jobs'
  task reset: :environment do
    unless Rails.env.development?
      abort 'This task is intended to be used on development environment only'
    end

    puts Sidekiq::Stats.new.queues.each { |k, _| Sidekiq::Queue.new(k).clear }
  end
end

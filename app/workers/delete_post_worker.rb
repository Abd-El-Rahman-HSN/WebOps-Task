class DeletePostWorker
  include Sidekiq::Worker

  def perform()
    Post.recent.destroy_all
  end
end

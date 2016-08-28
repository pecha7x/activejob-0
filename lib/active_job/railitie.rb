module ActiveJob
  # = Active Job Railtie
  class Railtie < Rails::Railtie # :nodoc:
    initializer 'active_job.logger' do
      ActiveSupport.on_load(:active_job) { self.logger ||= ::Rails.logger }
    end
  end
end
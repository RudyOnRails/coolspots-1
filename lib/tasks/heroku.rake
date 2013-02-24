namespace :heroku do
desc "Add useful Heroku addons: blitz, cachely, memcachier, papertrail, hostedgraphite, librato"
  task :addons do
    addons = `heroku addons`
    %w(blitz:250 cachely:developer memcachier:dev papertrail:choklad hostedgraphite:free librato:test newrelic:standard).each do |addon|
      sh "heroku addons:add #{addon}" unless addons =~ /#{addon}/
    end
  end
  desc "Add the buildpack for fast asset compilation"
  task :add_turbo_sprockets do
    sh "heroku config:add BUILDPACK_URL=https://github.com/ndbroadbent/heroku-buildpack-turbo-sprockets.git"
  end
end


require "rake"

namespace :assets do
  task :precompile do
    sh 'middleman build'
  end
end

desc "Run the server at http://localhost:4567"
task :server do
	system("middleman server")
end

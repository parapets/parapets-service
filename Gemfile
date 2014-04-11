source 'https://rubygems.org'

# Specify your gem's dependencies in parapet-service.gemspec
gemspec

def path_or_repo(path,repo)
  if Dir.exists?(path)
    { path: path }
  else
    { git: "https://github.com/#{repo}.git" }
  end
end

gem 'parapets-railties', path_or_repo('../parapets-railties', 'parapets/parapets-railties')

gem "codeclimate-test-reporter", group: :test, require: nil

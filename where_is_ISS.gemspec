
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "where_is_ISS/version"

Gem::Specification.new do |spec|
  spec.name          = "where_is_ISS"
  spec.version       = WhereIsISS::VERSION
  spec.authors       = ["Manoj Naidu"]
  spec.email         = ["manojnaidu619@gmail.com"]

  spec.summary       = %q{Tracking ISS(International Space Station)}
  spec.description   = %q{Gives the current location of ISS(International Space Station)}
  spec.homepage      = "https://github.com/manojnaidu619/where_is_ISS"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #   "public gem pushes."
  #end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "net/http"
  spec.add_development_dependency "json"
  spec.add_development_dependency "open-uri"
end

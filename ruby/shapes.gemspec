# frozen_string_literal: true

Gem::Specification.new do |spec|
    spec.name = "shapes"
    spec.version = "1.0.0"
    spec.authors = ["AlterSabeh"]
    spec.email = ["betamaximum22@gmail.com"]

    spec.summary = "A library for calculating the area and perimeter"
    spec.required_ruby_version = ">= 3.1.0"

    gemspec = File.basename(__FILE__)
    spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
        ls.readlines("\x0", chomp: true).reject do |f|
            (f == gemspec) ||
                f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
        end
    end
    spec.bindir = "exe"
    spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]
end

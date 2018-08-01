#
# Copyright 2018 Thomas Boerger <thomas@webhippie.de>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "gopad/version"

Gem::Specification.new do |s|
  s.name = "gopad"
  s.version = Gopad::Version
  s.date = Time.now.utc.strftime("%F")

  s.authors = ["Thomas Boerger"]
  s.email = ["thomas@webhippie.de"]
  s.summary = "etherpad for markdown with go"
  s.description = "etherpad for markdown with go"
  s.homepage = "https://github.com/gopad/gopad-ruby"
  s.license = "Apache-2.0"

  s.files = ["CHANGELOG.md", "README.md", "LICENSE"]
  s.files += Dir.glob("lib/**/*")

  s.test_files = Dir.glob("spec/**/*")

  s.executables = []
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 2.5.0"

  s.add_development_dependency "bundler"
  s.add_development_dependency "codacy-coverage"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rubocop"
  s.add_development_dependency "yard"
end

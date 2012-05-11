
require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/testtask'

spec = Gem::Specification.new do |s|
  s.name = 'RubMat'
  s.version = '2.1.7'
  s.extra_rdoc_files = ['README.md', 'LICENSE', 'gplv3.png', 'RubMat.png']
  s.summary = 'Discrete Mathematics solver and Usable Library'
  s.description = s.summary
  s.author = 'Mahmut Bulut'
  s.email = 'scienceblock@gmail.com'
  s.executables = ['rubmat']
  s.files = %w(LICENSE README.md Rakefile gplv3.png RubMat.png) + Dir.glob("{bin,lib,spec}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
  s.homepage = 'http://regularlambda.github.com/RubMat'
end

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end

#Rake::RDocTask.new do |rdoc|
#  files =['README.md', 'LICENSE', 'lib/**/*.rb', 'lib/**/*.yml']
#  rdoc.rdoc_files.add(files)
#  rdoc.main = "README" # page to start on
#  rdoc.title = "RubMat Docs"
#  rdoc.rdoc_dir = 'doc/rdoc' # rdoc output folder
#  rdoc.options << '--line-numbers'
#end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*.rb']
end

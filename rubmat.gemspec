spec = Gem::Specification.new do |s|
  s.name = 'RubMat'
  s.version = '2.2.2'
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
  s.add_dependency("commander", "~> 4.1.0")
end
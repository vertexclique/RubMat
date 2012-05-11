rm -rf RubMat-*.gem
sudo gem uninstall RubMat
gem build rubmat.gemspec
sudo gem install RubMat

rubmat

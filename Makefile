all: serve

.PHONY: serve
serve:
	bundle exec jekyll serve --host 0.0.0.0

.PHONY: install
install:
	sudo apt-get install ruby-full build-essential zlib1g-dev
	echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
	echo 'export GEM_HOME="${HOME}/gems"' >> ~/.bashrc
	echo 'export PATH="${HOME}/gems/bin:${PATH}"' >> ~/.bashrc
	. ~/.bashrc && gem install jekyll bundler && bundler update
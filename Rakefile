require 'rake'
task :install do
	main
end
def main
	sudo = sudo
	if File.exists?("#{ENV["HOME"]}/.vim/vimrc")==true
  		puts "\nYou already have an existing configuration.\nYou'll need to remove ~/.vim if you want to install.\n\n"
  		usersymlink(2)
	elsif File.exists?("/etc/vim/vimrc")==true
		puts "\nYou already have an existing configuration.\nYou'll need to remove /etc/vim if you want to install.\n\n"
		usersymlink(1)
	else
		puts "\nChecking for Git."
		checkgit = system "/usr/bin/env git --version | grep version"
		if checkgit == true
			sudo = sudoornotsudo
			if sudo == 1
				singleuser
				usersymlink(2)
			elsif sudo == 2
				globalusers
				usersymlink(1)
				return
			elsif sudo == 3
				singleuser
				usersymlink(2)
			else
				return
			end
		else
			puts "\n\nGit is not installed!"
			puts "Install git and try again.\n\n"
			return
		end
  	end
end
def sudoornotsudo
	if (`id -urn`.chomp.casecmp("root")||`who am i`.chomp.casecmp("root"))==0
		puts "\n\nYou have run this script with root permissions."
		puts "If you only wish to have it installed for your current (non-root) user,\nre-run the script under that user without SUDO.\n\n"
		puts "That said, would you like to install this VIM configuration for:\n\n"
		puts "(r)oot or (g)lobally.\n\n"
		response = $stdin.gets
		puts ""
		if response.chomp.casecmp("R")==0
			return 1
		elsif response.chomp.casecmp("G")==0
			#git clone global
			return 2
		else
			puts "Invalid input. Exiting Script.\n\n"
			return 0
		end
	else
		return 3
	end
end
def singleuser
	puts "Cloning VIM configuration..."
	system "/usr/bin/env git clone git://github.com/brandondean/Vim.git ~/.vim"
	system "(cd ~/.vim && git submodule init && git submodule update)"
end
def globalusers
	if File.exist?("#{ENV["HOME"]}/.vim-tmp/")==true
		puts "/etc/vim/ folder already exists. Recreating..."
		`rm -rf /etc/vim/`
		`mkdir /etc/vim/` 
	else
		`mkdir /etc/vim/`
		puts "Created /etc/vim/ folder."
	end
	puts "Cloning VIM configuration..."
	system "/usr/bin/env git clone git://github.com/brandondean/Vim.git /etc/vim/"
	system "(cd /etc/vim && git submodule init && git submodule update)"
	return
end
def usersymlink(section=0)
	if section==1
		if File.exist?("/etc/vimrc")==true
			puts "/etc/vimrc file already exists.\nPlease remove this file, and try again.\n\n"
		else
			`ln -s "/etc/vim/vimrc" "/etc/vimrc"`
			puts "\n\nEstablished symbolic link of /etc/vimrc\n\n"
		end
		return
	elsif section==2
		files = ['vimrc']
		# Create dotfile symlinks.
		files.each do |file|
			target = "#{ENV["HOME"]}/.#{file}"
			if File.exist?(target)==true
				puts "\n#{file} already exists as #{target}. Please remove this file, and try again."
			else
				`ln -s "#{ENV["HOME"]}/.vim/#{file}" "#{target}"`
				puts "Established symbolic link of .vimrc\n\n"
			end
			if File.exist?("#{ENV["HOME"]}/.vim-tmp/")==true
				puts "Temporary directory already exists.\n\n"
			else
				`mkdir "#{ENV["HOME"]}/.vim-tmp/"`
				puts "Created temp directory for VIM\n\n."
			end
		end
		return
	else
		return
	end
end
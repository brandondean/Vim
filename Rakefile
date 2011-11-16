require 'rake'

task :install do
  files = ['vimrc']

  # Create dotfile symlinks.
  files.each do |file|

    target = "#{ENV["HOME"]}/.#{file}"

    if File.exists?(target)
      puts "#{file} already exists as #{target}. Please remove this file, and try again."
      next
    end

    `ln -s "$PWD/#{file}" "#{target}"`
    puts "Established dotfiles: #{files}"

  end

  #subs
  `git submodule init && git submodule update`
end

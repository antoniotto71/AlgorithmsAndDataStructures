def find_directories(directory)
  # Loop through first-level directory
  Dir.foreach(directory) do |filename|

    # If the current file is itself a subdirectory:
    if File.directory?("#{directory}/#{filename}") &&
      filename != '.' && filename != '..'
      puts "#{directory}/#{filename}"

      # Loop through second-level subdirectory:
      Dir.foreach("#{directory}/#{filename}") do |inner_filename|
        if File.directory?("#{directory}/#{filename}/#{inner_filename}") &&
          inner_filename != '.' && inner_filename != '..'
        puts "#{directory}/#{filename}/#{inner_filename}"
        end
      end
    end
  end
end

# find_directories("/Users/antonioguitto/RubymineProjects")

def find_directories_recursive(directory)
  Dir.foreach(directory) do |filename|

    # If the current file is itself a subdirectory:
    if File.directory?("#{directory}/#{filename}") &&
      filename != '.' && filename != '..'
      puts "#{directory}/#{filename}"

      # Recursively call this function on the subdirectory:
      find_directories_recursive("#{directory}/#{filename}")
    end
  end
end

find_directories_recursive("/Users/antonioguitto/Morrowind")


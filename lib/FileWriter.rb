module FileWriter
  def write(file_path, str)
    begin
      File.open(file_path, "w") do |file|
        file.puts(str)
      end
    end
  rescue SystemCallError => e
    puts %Q(class=[#{e.class}] message=[#{e.message}])
  rescue IOError => e
    puts %Q(class=[#{e.class}] message=[#{e.message}])
  end

  module_function :write
end

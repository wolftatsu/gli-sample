require_relative './filecnv/version.rb'

class Converter
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def cnv(src)
    src.gsub(/`(.*)`/) do |r|
      r.upcase
    end  
  end

  def put(out = @path + "_out")
    File.open(out, "wb") do |w|
      File.open(@path) do |f|
        f.each_line do |l|
          w.write cnv(l)
        end
      end
    end
  end
end  
    

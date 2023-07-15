require 'pry'

class TextAnalyzer
  def process
    text = File.open("sample_text.txt", "r")
    yield(text.read)
    text.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.split("\n\n").count} paragraphs" }
analyzer.process { |file| puts "#{file.split("\n").count} lines" }
analyzer.process { |file| puts "#{file.split.count} words " }

require 'json'

module ReportFormatters
  class JSON
    def self.format(data)
      data.to_json
    end
  end

  class PlainText
    def self.format(data)
      data.to_s
    end
  end

  class HTML
    def self.format(data)
      html = ""

      html << "<ul>"
      data.each { |product, amount| html << "<li>#{product}: #{amount}</li>" }
      html << "</ul>"

      html
    end
  end
end

class ReportGenerator
  def self.generate(data, formatter)
    formatter.format(data)
  end
end

data = { onions: 31, potatoes: 24, eggs: 10 }

p ReportGenerator.generate(data, ReportFormatters::HTML)
p ReportGenerator.generate(data, ReportFormatters::JSON)
p ReportGenerator.generate(data, ReportFormatters::PlainText)

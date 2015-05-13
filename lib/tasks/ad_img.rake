#http://stackoverflow.com/questions/29649213/ruby-mechanize-how-to-parse-the-site-response-before-mechanize-parses-it
class MyParser
  def self.parse(thing, url = nil, encoding = nil, options = Nokogiri::XML::ParseOptions::DEFAULT_HTML, &block)
    thing = thing.gsub(/\x00/, "")
    Nokogiri::HTML::Document.parse(thing, url, encoding, options, &block)
  end
end





namespace :kinopoisk do
  task :import => :environment do
    agent=Mechanize.new
    agent.html_parser=MyParser
    host="http://www.kinopoisk.ru"
    agent.get "#{host}/box/" do |box_page|
      box_page.search("a.continue[href^='/film/'],a.all[href^='/film/']").each do |film_link|
        create_film(agent, film_link)
      end
    end
  end
end
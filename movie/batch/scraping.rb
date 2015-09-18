#gem wheneverを使って定期的に実行する

class Scraiping < ActiveRecord::Base
    require 'open-uri'
    require 'nokogiri'
    require 'robotex'

    robotex = Robotex.new

    p robotex.allowed?("https://www.doorkeeper.jp/events")
    url = 'https://www.doorkeeper.jp/events'
    user_agent = 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.63 Safari/537.36'
    charset = nil
    html = open(url, "User-Agent" => user_agent) do |f|
          charset = f.charset
            f.read
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.css('body > div.content > div > div.row > div > div > div > div.span11 > p.large > a > span').each {|test|
        #puts test.text
    }
    puts Task.first()
end

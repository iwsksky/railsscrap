class Batch::ScrapingConnpass

    def self.scraping
        require 'open-uri'
        require 'nokogiri'
        require 'robotex'       
        
        Connpass.destroy_all

        lang_type = ["php", "ruby", "java", "ios", "javascript", "ruby-on-rails", "scala"]

        lang_type.each{|lang|
            robotex = Robotex.new
            connpass = Connpass.new

            p robotex.allowed?("https://www.doorkeeper.jp/events/"+lang)
            url = 'https://www.doorkeeper.jp/events/'+lang
            user_agent = 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.63 Safari/537.36'
            charset = nil
            html = open(url, "User-Agent" => user_agent) do |f|
                  charset = f.charset
                    f.read
            end

            doc = Nokogiri::HTML.parse(html, nil, charset)
            doc.css('body > div.content > div > div.row > div.span9 > div > div.panel-body > div > div > div.span11 > p.large > a > span').each {|test|
                connpass = Connpass.new
                connpass.content = test.text
                connpass.site_id = 1
                connpass.language_id = LANG_ID[lang]
                connpass.save
                puts test.text
            }
            connpass.save
        }
    end
end

class SetScraper
  def self.call
    agent = Mechanize.new
    agent.user_agent = 'Mozilla/5.0(Windows; U; Windows NT 7.0; rv:1.9.2) Gecko/20100101 Firefox/3.6'
    agent.read_timeout = 8
    agent.open_timeout = 5
    agent.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    agent
  end
end

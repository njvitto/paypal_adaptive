require 'net/http'
require 'net/https'
require 'json'
require 'config'

module PaypalAdaptive
  class IpnNotification

    def initialize(env=nil)
      @env = env
      @@config ||= PaypalAdaptive::Config.new(@env)
      @@paypal_base_url ||= @@config.paypal_base_url
    end

    def send_back(data, logger = nil)
      data = "cmd=_notify-validate&#{data}"
      url = URI.parse @@paypal_base_url
      http = Net::HTTP.new(url.host, 443)
      http.use_ssl = (url.scheme == 'https')

      path = "#{@@paypal_base_url}/cgi-bin/webscr"

      logger.request(path, data, "") if logger
      response_data = http.post(path, data).body

      @verified = response_data == "VERIFIED"
    end

    def verified?
      @verified
    end

  end
end
require "web_archive/version"
require "open-uri"

module WebArchive
  extend self
  BASE = 'http://web.archive.org'

  def save!(url)
    s = open( "#{BASE}/save/#{url}", &:read )
    BASE + s[%r{"(/web/\d+/.*?)"},1]
  end

  def latest(url)
    get_archived_urls(url).last
  end

  def oldest(url)
    get_archived_urls(url).first
  end

  def get_archived_urls(url)
    html = open("#{BASE}/web/*/#{url}", &:read) rescue (return [])
    html.scan(%r{"(/web/\d+/.*?)"}).flatten.uniq.sort.map do |str|
      BASE + str
    end
  end
end

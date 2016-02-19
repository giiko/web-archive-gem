require 'spec_helper'
require 'web-archive'

class String
  def uri?
    !!(self =~ URI::regexp)
  end
end

RSpec.describe 'Methods for http://web.archive.org/' do
  target_url = "http://example.com/"

  describe 'WebArchive::BASE' do
    it 'must be url' do
      is_asserted_by { WebArchive::BASE.uri? }
    end
  end

  describe 'WebArchive#.save!' do
    it 'is making archive and getting snapshot url' do
      is_asserted_by { WebArchive.save!(target_url).uri? }
    end
  end

  describe 'WebArchive#.latest' do
    it 'is getting latest snapshot url' do
      is_asserted_by { WebArchive.latest(target_url).uri? }
    end
  end

  describe 'WebArchive#.oldest' do
    it 'is getting oldest snapshot url' do
      is_asserted_by { WebArchive.oldest(target_url).uri? }
    end
  end
end

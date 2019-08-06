# frozen_string_literal: true

require 'hashids'

def handler(event:, context:)
  hashids = Hashids.new('this is my salt')
  hash = hashids.encode(12_345)

  { statusCode: 200, body: hash }
end

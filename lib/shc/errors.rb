module SHC
  class Error < StandardError; end

  class ServerError < Error; end
  class NotFound < Error; end
  class BadRequest < Error; end
  class Unauthorized < Error; end
end

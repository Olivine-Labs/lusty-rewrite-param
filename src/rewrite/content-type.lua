return {
  handler = function(context)
    context.request.headers["content-type"] = context.request.query["content-type"]
    return nil, true
  end,

  options = {
    predicate = function(context)
      if context.request.query["content-type"] then
        return true
      end
      return false
    end
  }
}

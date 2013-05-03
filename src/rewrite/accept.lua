return {
  handler = function(context)
    context.request.headers["accept"] = context.request.query["accept"]
    return nil, true
  end,

  options = {
    predicate = function(context)
      if context.request.query["accept"] then
        return true
      end
      return false
    end
  }
}

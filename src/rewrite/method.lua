return {
  handler = function(context)
    context.request.method = context.request.query.method:upper()
    return nil, true
  end,

  options = {
    predicate = function(context)
      if context.request.query.method then
        return true
      end
      return false
    end
  }
}

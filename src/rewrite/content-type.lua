
local param = config.param

return {
  handler = function(context)
    context.request.headers["content-type"] = context.request.query[param]
    return nil, true
  end,

  options = {
    predicate = function(context)
      if context.request.query[param] then
        return true
      end
      return false
    end
  }
}

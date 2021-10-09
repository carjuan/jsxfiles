local M = {}
local _inspect = vim.inspect

function M.put(...)
    local objects = {}
    for i = 1, select('#', ...) do
        local v = select(i, ...)
        table.insert(objects, vim.inspect(v))
    end

    print(table.concat(objects, '\n'))
    return ...
end
M.inspect = function (tbl)
  print(_inspect(tbl))
end

return M

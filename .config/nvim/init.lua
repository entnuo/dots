require("options")
require("mappings")
require("plugins")
require("plugin-conf")

--  local async
--  async =
--      vim.loop.new_async(
--      vim.schedule_wrap(
--          function()
--              require "mappings"
--              require "plugins"
--              require "plugin_config"
--  
--              async:close()
--          end
--      )
--  )
--  async:send()

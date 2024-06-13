local plugin = {
  PRIORITY = 1000,
  VERSION = "0.1",
}

function plugin:init_worker()
  kong.log.debug("saying hi from the 'init_worker' handler")
end

function plugin:access(plugin_conf)
  kong.log.warn("--------> I AM HERE <---------")
end

return plugin
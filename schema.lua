local typedefs = require "kong.db.schema.typedefs"


local PLUGIN_NAME = "myplugin"


local schema = {
  name = PLUGIN_NAME,
  fields = {
    { consumer = typedefs.no_consumer },
    { protocols = typedefs.protocols_http },
    { config = {
        type = "record",
        fields = {},
        entity_checks = {},
      },
    },
  },
}

return schema
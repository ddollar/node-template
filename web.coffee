program = require("./package.json").name
async   = require("async")
dd      = require("ddollar")
log     = require("logfmt").namespace(ns:program)
stdweb  = require("stdweb")

app = stdweb(program)

app.get "/", (req, res) ->
  res.send "ok"

app.start (port) ->
  console.log "listening on #{port}"

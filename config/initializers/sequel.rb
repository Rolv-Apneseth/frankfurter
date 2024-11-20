# frozen_string_literal: true

require "pg"
require "sequel"

Sequel.extension(:pg_json_ops)
Sequel.single_threaded = true
Sequel.connect(ENV["DATABASE_URL"] ||
               "postgres://localhost:#{ENV.fetch("PGPORT", nil)}/frankfurter_#{App.env}")
  .extension(:pg_json)

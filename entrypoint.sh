#!/bin/bash
set -e

# Remove a potentially re-existing server.pid for Rails.
rm -f /usr/src/app/tmp/pids/server.pid

if [ "${*}" == "rails server" ]; then
	rails db:prepare
fi

# Then exec the container's main process (what's set as CMD in the Dockerfile)
exec "$@"
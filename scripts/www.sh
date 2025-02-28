#!/bin/bash
set -euo pipefail

STATIC_ROOT="www/static"
PACKAGE_VERSION=$(cat package.json | grep version | cut -d '"' -f 4)


cp node_modules/mocha/mocha.js "$STATIC_ROOT/node_modules/mocha/mocha.js"
cp node_modules/mocha/mocha.css "$STATIC_ROOT/node_modules/mocha/mocha.css"
cp node_modules/chai/chai.js "$STATIC_ROOT/node_modules/chai/chai.js"
cp node_modules/chai-dom/chai-dom.js "$STATIC_ROOT/node_modules/chai-dom/chai-dom.js"
cp node_modules/sinon/pkg/sinon.js "$STATIC_ROOT/node_modules/sinon/pkg/sinon.js"
cp node_modules/mock-socket/dist/mock-socket.js "$STATIC_ROOT/node_modules/mock-socket/dist/mock-socket.js"

rm -rf "$STATIC_ROOT/test" "$STATIC_ROOT/ext"
cp -r "./test" "$STATIC_ROOT/test"
cp -r "./ext" "$STATIC_ROOT/ext"

# copy the current htmx to the main website
cp "lib/htmx.js" "www/themes/htmx-theme/static/js/htmx.js"
cp "ext/class-tools.js" "www/themes/htmx-theme/static/js/class-tools.js"
cp "ext/preload.js" "www/themes/htmx-theme/static/js/preload.js"

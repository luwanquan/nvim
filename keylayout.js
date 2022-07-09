#!/Users/luffy/.node/14.19.1/bin/node
// const objc = require('objc')
const objc = require('/Users/luffy/.node/14.19.1/lib/node_modules/objc')
const { exec } = require('node:child_process');

objc.import('AppKit')
const {NSWorkspace} = objc

let latest = false
setInterval(() => {
  const activeApp = NSWorkspace.sharedWorkspace().activeApplication()
  const identifier = objc.js(activeApp).NSApplicationBundleIdentifier

  if (!latest && identifier === 'com.microsoft.VSCode') {
    latest = true
    exec('/usr/local/bin/im-select com.apple.keylayout.ABC')
    console.log(identifier + ' is activated')
  } else {
    latest = false
  }
}, 1000)

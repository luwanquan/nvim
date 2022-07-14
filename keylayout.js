#!/Users/luffy/.node/14.19.1/bin/node
// const objc = require('objc')
const objc = require('/Users/luffy/.node/14.19.1/lib/node_modules/objc')
const { exec } = require('node:child_process');

objc.import('AppKit')
const {NSWorkspace} = objc

let latest = ''
setInterval(() => {
  const activeApp = NSWorkspace.sharedWorkspace().activeApplication()
  const identifier = objc.js(activeApp).NSApplicationBundleIdentifier
  const vscodeID = 'com.microsoft.VSCode'

  if (latest !== vscodeID && identifier === vscodeID) {
    console.log(vscodeID + ' is activated')
    latest = identifier
    exec('/usr/local/bin/im-select com.apple.keylayout.ABC')
  } else if (latest === vscodeID && identifier !== vscodeID) {
    latest = identifier
  }
}, 1000)

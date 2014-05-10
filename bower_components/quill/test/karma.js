var _  = require('lodash');
var os = require('os');


var CHROME_VERSION = '34'
var FIREFOX_VERSION = '28'
var SAFARI_VERSION = '7'
var IOS_VERSION = '7.1'
var ANDROID_VERSION = '4.3'

var browsers = {
  'mac-chrome'  : ['Mac 10.9', 'chrome', CHROME_VERSION],
  'mac-firefox' : ['Mac 10.9', 'firefox', FIREFOX_VERSION],
  'mac-safari'  : ['Mac 10.9', 'safari', SAFARI_VERSION],

  'windows-chrome'  : ['Windows 8.1', 'chrome', CHROME_VERSION],
  'windows-firefox' : ['Windows 8.1', 'firefox', FIREFOX_VERSION],
  'windows-ie-11'   : ['Windows 8.1', 'internet explorer', '11'],

  'windows-ie-10'   : ['Windows 7', 'internet explorer', '10'],
  'windows-ie-9'    : ['Windows 7', 'internet explorer', '9'],

  'linux-chrome'    : ['Linux', 'chrome', CHROME_VERSION],
  'linux-firefox'   : ['Linux', 'firefox', FIREFOX_VERSION],

  'iphone'  : ['Mac 10.9', 'iphone', IOS_VERSION],
  'ipad'    : ['Mac 10.9', 'ipad', IOS_VERSION],
  'android' : ['Linux', 'android', ANDROID_VERSION]
}

var customLaunchers = _.reduce(browsers, function(memo, browser, name) {
  memo[name] = {
    base: 'SauceLabs',
    platform: browser[0],
    browserName: browser[1],
    version: browser[2]
  };
  return memo;
}, {});

module.exports = function(config) {
  config.set({
    basePath: '../build',
    frameworks: ['jasmine'],
    files: [
      '../node_modules/jquery/dist/jquery.js',
      '../node_modules/lodash/lodash.js',
      '../node_modules/async/lib/async.js',
      'tandem-core.js',
      'quill.exposed.js',

      'test/fixtures/unit.html',
      'test/helpers/*.js',

      'test/unit/*.js',
      'test/unit/lib/*.js',
      'test/unit/modules/*.js',
      'test/unit/themes/*.js'
    ],
    exclude: [],
    coverageReporter: {
      type: 'lcov',
      dir: '../coverage/'
    },
    reporters: ['progress'],
    preprocessors: {
      '**/*.html': ['html2js']
    },
    port: 9876,
    colors: true,
    logLevel: config.LOG_INFO,
    autoWatch: false,
    singleRun: true,
    sauceLabs: {
      testName: 'Quill',
      username: 'quill',
      accessKey: 'adc0c0cf-221b-46f1-81b9-a4429b722c2e',
      build: os.hostname() + '-' + _.random(16*16*16*16).toString(16),
      options: {
        'public': 'public',
        'record-screenshots': false
      }
    },
    customLaunchers: customLaunchers
  })

  if (process.env.TRAVIS) {
    config.transports = ['xhr-polling'];
    config.sauceLabs.build = 'travis-' + process.env.TRAVIS_BUILD_ID;
    if (process.env.TRAVIS_BRANCH == 'master') {
      config.sauceLabs.username = 'quill-master';
      config.sauceLabs.accessKey = '685c8996-7b70-4543-8167-58f8e88a8484';
    }
  }
}

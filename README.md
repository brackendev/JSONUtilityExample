JSONUtility
===========
[![](https://img.shields.io/badge/language-Objective--C-orange.svg?style=flat-square)](https://en.wikipedia.org/wiki/Objective-C)
[![](https://img.shields.io/badge/platform-iOS-lightgrey.svg?style=flat-square)](http://www.apple.com/ios/)
[![](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT/)

For projects that require iOS 4 compatibility, JSONUtility serializes/deserializes with JSONKit (on iOS 4) and NSJSONSerialization (on iOS 5+).

[JSONKit](https://github.com/johnezang/JSONKit.git) submodule is required, so be sure to clone like this:

````
$ git clone --recursive https://github.com/bracken-dev/JSONUtilityExample.git
````

## How to Use

1. Add [JSONUtility.h](https://github.com/bracken-dev/JSONUtilityExample/blob/master/JSONUtility/JSONUtility.h) and [JSONUtility.m](https://github.com/bracken-dev/JSONUtilityExample/blob/master/JSONUtility/JSONUtility.m) to your project.
2. Add [JSONKit](https://github.com/johnezang/JSONKit.git) to your project.
3. See the example in [ViewController.m](https://github.com/bracken-dev/JSONUtilityExample/blob/master/JSONUtilityExample/ViewController.m) on how to implement.

### Author

Bracken Spencer<br />
[![](http://i.imgur.com/tXSoThF.png)](http://twitter.com/brackendev/)
[![](http://i.imgur.com/0o48UoR.png)](http://github.com/brackendev/)

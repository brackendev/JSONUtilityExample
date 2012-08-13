JSONUtility
===========

For projects that require iOS 4 compatibility, JSONUtility serializes/deserializes with JSONKit (on iOS 4) and NSJSONSerialization (on iOS 5+).

[JSONKit](https://github.com/johnezang/JSONKit.git) submodule is required, so be sure to clone like this:

````
$ git clone --recursive https://github.com/bracken-dev/JSONUtilityExample.git
````

## How to Use

1. Add [JSONUtility.h](https://github.com/bracken-dev/JSONUtilityExample/blob/master/JSONUtility/JSONUtility.h) and [JSONUtility.m](https://github.com/bracken-dev/JSONUtilityExample/blob/master/JSONUtility/JSONUtility.m) to your project.
2. Add [JSONKit](https://github.com/johnezang/JSONKit.git) to your project.
3. See the example in [ViewController.m](https://github.com/bracken-dev/JSONUtilityExample/blob/master/JSONUtilityExample/ViewController.m) on how to implement.
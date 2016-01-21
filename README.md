# httpdns-ios

[![CI Status](http://img.shields.io/travis/zz/httpdns-ios.svg?style=flat)](https://travis-ci.org/zz/httpdns-ios)
[![Version](https://img.shields.io/cocoapods/v/httpdns-ios.svg?style=flat)](http://cocoapods.org/pods/httpdns-ios)
[![License](https://img.shields.io/cocoapods/l/httpdns-ios.svg?style=flat)](http://cocoapods.org/pods/httpdns-ios)
[![Platform](https://img.shields.io/cocoapods/p/httpdns-ios.svg?style=flat)](http://cocoapods.org/pods/httpdns-ios)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

HTTPDNS使用HTTP协议进行域名解析，代替现有基于UDP的DNS协议，域名解析请求直接发送到HTTPDNS服务器，从而绕过运营商的Local DNS，能够避免Local DNS造成的域名劫持问题和调度不精准问题

目前默认使用为dnspod的httpdns服务器 https://www.dnspod.cn/httpdns

```ruby
pod "HttpDNS", :git => 'git@github.com:wlsy/httpdns-ios.git'
```

## Author

zz, zz@mou.io

## License

httpdns-ios is available under the MIT license. See the LICENSE file for more info.

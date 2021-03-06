# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'generated/azure_mgmt_iot_hub/module_definition'
require 'generated/azure_mgmt_iot_hub/version'

Gem::Specification.new do |spec|
  spec.name          = 'azure_mgmt_iot_hub'
  spec.version       = Azure::ARM::IotHub::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'azrubyteam@microsoft.com'
  spec.description   = 'Microsoft Azure IoT Hub Management Client Library for Ruby'
  spec.summary       = 'Official Ruby client library to consume Microsoft Azure IoT Hub Management services.'
  spec.homepage      = 'https://aka.ms/azure-sdk-for-ruby'
  spec.license       = 'MIT'

  spec.files         = Dir["LICENSE.txt", "lib/**/*"]
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'dotenv', '~> 2'

  spec.add_runtime_dependency 'ms_rest_azure', '~> 0.8.0'
end

#!/usr/bin/env ruby

# Loops through all instances in specified region and prints instance attributes
require 'aws-sdk-ec2'  # v2: require 'aws-sdk'

ec2 = Aws::EC2::Resource.new(region: 'us-east-1')

ec2.instances.each do |i|
  puts "ID:    #{i.id}"
  puts "Tags:    #{i.tags}"
  puts "State: #{i.state.name}"
  puts "LocalIP: #{i.private_ip_address}"
end


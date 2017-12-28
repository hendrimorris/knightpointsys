require 'aws-sdk-ec2'  # v2: require 'aws-sdk'

ec2 = Aws::EC2::Resource.new(region: 'us-east-1')

# To only get the first 10 instances:
# ec2.instances.limit(10).each do |i|
ec2.instances.each do |i|
  puts "ID:    #{i.id}"
  puts "Tags:    #{i.tags}"
  puts "State: #{i.state.name}"
  puts "LocalIP: #{i.private_ip_address}"
end

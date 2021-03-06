require 'aws-sdk'
require 'awspec/helper/finder/vpc'
require 'awspec/helper/finder/ec2'
require 'awspec/helper/finder/security_group'
require 'awspec/helper/finder/rds'
require 'awspec/helper/finder/route53'
require 'awspec/helper/finder/s3'
require 'awspec/helper/finder/autoscaling'
require 'awspec/helper/finder/ebs'
require 'awspec/helper/finder/elb'
require 'awspec/helper/finder/lambda'
require 'awspec/helper/finder/iam'
require 'awspec/helper/finder/elasticache'
require 'awspec/helper/finder/cloudwatch'
require 'awspec/helper/finder/ses'
require 'awspec/helper/finder/directconnect'

module Awspec::Helper
  module Finder
    attr_reader :ec2_client
    include Awspec::Helper::Finder::Vpc
    include Awspec::Helper::Finder::Ec2
    include Awspec::Helper::Finder::SecurityGroup
    include Awspec::Helper::Finder::Rds
    include Awspec::Helper::Finder::Route53
    include Awspec::Helper::Finder::S3
    include Awspec::Helper::Finder::Autoscaling
    include Awspec::Helper::Finder::Ebs
    include Awspec::Helper::Finder::Elb
    include Awspec::Helper::Finder::Lambda
    include Awspec::Helper::Finder::Iam
    include Awspec::Helper::Finder::Elasticache
    include Awspec::Helper::Finder::Cloudwatch
    include Awspec::Helper::Finder::Ses
    include Awspec::Helper::Finder::Directconnect

    # rubocop:disable all
    def initialize(id = nil)
      @ec2_client = Aws::EC2::Client.new
      @rds_client = Aws::RDS::Client.new
      @route53_client = Aws::Route53::Client.new
      @s3_client = Aws::S3::Client.new
      @autoscaling_client = Aws::AutoScaling::Client.new
      @elb_client = Aws::ElasticLoadBalancing::Client.new
      @lambda_client = Aws::Lambda::Client.new
      @iam_client = Aws::IAM::Client.new
      @elasticache_client = Aws::ElastiCache::Client.new
      @cloudwatch_client = Aws::CloudWatch::Client.new
      @ses_client = Aws::SES::Client.new
      @directconnect_client = Aws::DirectConnect::Client.new
    end
  end
end

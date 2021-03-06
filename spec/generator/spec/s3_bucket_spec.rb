require 'spec_helper'

describe Awspec::Generator::Spec::S3Bucket do
  before do
    Awspec::Stub.load 's3_bucket'
  end
  let(:s3_bucket) { Awspec::Generator::Spec::S3Bucket.new }
  it 'generates spec' do
    spec = <<-'EOF'
describe s3_bucket('my-bucket') do
  it { should exist }
  its(:acl_owner) { should eq 'my-bucket-owner' }
  its(:acl_grants_count) { should eq 3 }
  it { should have_acl_grant(grantee: 'my-bucket-owner', permission: 'FULL_CONTROL') }
  it { should have_acl_grant(grantee: 'http://acs.amazonaws.com/groups/s3/LogDelivery', permission: 'WRITE') }
  it { should have_acl_grant(grantee: '68f4bb06b094152df53893bfba57760e', permission: 'READ') }
end
EOF
    expect(s3_bucket.generate_all.to_s).to eq spec
  end
end

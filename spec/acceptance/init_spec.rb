require 'spec_helper_acceptance'

describe 'systemd' do
  it 'works idempotently with no errors' do
    pp = 'include systemd'
    apply_manifest(pp, catch_failures: true)
    apply_manifest(pp, catch_changes: true)
  end
end

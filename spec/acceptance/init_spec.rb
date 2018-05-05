require 'spec_helper_acceptance'

describe 'systemd' do
  it 'works idempotently with no errors' do
    pp = <<-EOS
      class{'systemd':
        manage_timesyncd    => true,
        ntp_server          => ['0.pool.ntp.org', '1.pool.ntp.org'],
        fallback_ntp_server => ['2.pool.ntp.org', '3.pool.ntp.org'],
      }
    EOS
    apply_manifest(pp, catch_failures: true)
    apply_manifest(pp, catch_changes: true)
  end

  describe service('systemd-timesyncd') do
    it { is_expected.to be_running }
    it { is_expected.to be_enabled }
  end
end

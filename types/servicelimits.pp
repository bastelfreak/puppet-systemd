# Matches Systemd Service Limit Struct
type Systemd::ServiceLimits = Struct[
  {
    Optional['LimitCPU']            => Pattern['^\d+(s|m|h|d|w|M|y)?(:\d+(s|m|h|d|w|M|y)?)?$'],
    Optional['LimitFSIZE']          => Pattern['^(infinity|((\d+(K|M|G|T|P|E)(:\d+(K|M|G|T|P|E))?)))$'],
    Optional['LimitDATA']           => Pattern['^(infinity|((\d+(K|M|G|T|P|E)(:\d+(K|M|G|T|P|E))?)))$'],
    Optional['LimitSTACK']          => Pattern['^(infinity|((\d+(K|M|G|T|P|E)(:\d+(K|M|G|T|P|E))?)))$'],
    Optional['LimitCORE']           => Pattern['^(infinity|((\d+(K|M|G|T|P|E)(:\d+(K|M|G|T|P|E))?)))$'],
    Optional['LimitRSS']            => Pattern['^(infinity|((\d+(K|M|G|T|P|E)(:\d+(K|M|G|T|P|E))?)))$'],
    Optional['LimitNOFILE']         => Variant[Integer[0],Pattern['^(infinity|\d+(:(infinity|\d+))?)$']],
    Optional['LimitAS']             => Pattern['^(infinity|((\d+(K|M|G|T|P|E)(:\d+(K|M|G|T|P|E))?)))$'],
    Optional['LimitNPROC']          => Integer[1],
    Optional['LimitMEMLOCK']        => Pattern['^(infinity|((\d+(K|M|G|T|P|E)(:\d+(K|M|G|T|P|E))?)))$'],
    Optional['LimitLOCKS']          => Integer[1],
    Optional['LimitSIGPENDING']     => Integer[1],
    Optional['LimitMSGQUEUE']       => Pattern['^(infinity|((\d+(K|M|G|T|P|E)(:\d+(K|M|G|T|P|E))?)))$'],
    Optional['LimitNICE']           => Variant[Integer[0,40], Pattern['^(-\+([0-1]?[0-9]|20))|([0-3]?[0-9]|40)$']],
    Optional['LimitRTPRIO']         => Integer[0],
    Optional['LimitRTTIME']         => Pattern['^\d+(ms|s|m|h|d|w|M|y)?(:\d+(ms|s|m|h|d|w|M|y)?)?$'],
    Optional['CPUAccounting']       => Boolean,
    Optional['CPUShares']           => Integer[2,262144],
    Optional['StartupCPUShares']    => Integer[2,262144],
    Optional['CPUQuota']            => Pattern['^([1-9][0-9]?$|^100)%$'],
    Optional['MemoryAccounting']    => Boolean,
    Optional['MemoryLow']           => Pattern['^(\d+(K|M|G|T)?)$'],
    Optional['MemoryHigh']          => Pattern['^(\d+(K|M|G|T)?)$'],
    Optional['MemoryMax']           => Pattern['^(\d+(K|M|G|T)?)$'],
    Optional['MemoryLimit']         => Pattern['^(\d+(K|M|G|T)?)$'],
    Optional['TasksAccounting']     => Boolean,
    Optional['TasksMax']            => Variant[Integer[1],Pattern['^(infinity|([1-9][0-9]?$|^100)%)$']],
    Optional['IOAccounting']        => Boolean,
    Optional['IOWeight']            => Integer[1,10000],
    Optional['StartupIOWeight']     => Integer[1,10000],
    Optional['IODeviceWeight']      => Array[Hash[Stdlib::Absolutepath, Integer[1,10000], 1, 1]],
    Optional['IOReadBandwidthMax']  => Array[Hash[Stdlib::Absolutepath, Pattern['^(\d+(K|M|G|T)?)$'], 1, 1]],
    Optional['IOWriteBandwidthMax'] => Array[Hash[Stdlib::Absolutepath, Pattern['^(\d+(K|M|G|T)?)$'], 1, 1]],
    Optional['IOReadIOPSMax']       => Array[Hash[Stdlib::Absolutepath, Pattern['^(\d+(K|M|G|T)?)$'], 1, 1]],
    Optional['IOWriteIOPSMax']      => Array[Hash[Stdlib::Absolutepath, Pattern['^(\d+(K|M|G|T)?)$'], 1, 1]],
    Optional['DeviceAllow']         => String[1],
    Optional['DevicePolicy']        => Enum['auto','closed','strict'],
    Optional['Slice']               => String[1],
    Optional['Delegate']            => Boolean
  }
]

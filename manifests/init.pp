# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nextcloud
class nextcloud(
  Boolean $manage_package,
  String $install_packages,
  Hash[String, Any] $config,
) {
  contain rspamd::install
  contain rspamd::config

  Class['::rspamd::install']
  -> Class['::rspamd::config']
}

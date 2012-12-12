include_recipe "syslog-ng::default"

%w(sql mongodb).each do |pkg|
package "syslog-ng-mod-#{pkg}" do
  action :install
  notifies :reload, "service[syslog-ng]"
end

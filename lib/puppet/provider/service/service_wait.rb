# Manage services with ensuring it really runs

Puppet::Type.type(:service).provide :service_wait, :parent => :redhat  do
  desc "Manages services using `service-wait` command."

  commands :service => "service-wait"

  defaultfor :osfamily => [:redhat]

end

# Description

Role that installs Cloudera Manager Agent on a host
It configures scm-agent to send heartbits to CM server mentioned in cloudera_cluster_cm_hostname. By default it is the first member of cloudera_manager_server group in inventory.

After scm-agent started, it register itself at CM server. For this action the `wait` block is added in the end of the role.

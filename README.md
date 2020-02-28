# Ansible Role for keepalived on CentOS

The version of keepalived (1.3.5) that is provided in the CentOS repositories is extremely outdated, and contains several bugs, especially with regards to excuting notification scripts.

This role installs the most recent version of keepalived (currently 2.0.20) on CentOS systems, along with the evrardjp.keepalived role in order to configure it.

It also includes bash shell scripts for logging notification events (master/backup/slave/stop).

## Requirements

None.  This role manages and installs all required dependencies.

## Role Variables

This role inherits the role variables from the evrardjp.keepalived role, so please reference the variables at:

https://github.com/evrardjp/ansible-keepalived/blob/master/README.md#role-variables

## Dependencies

 - https://galaxy.ansible.com/evrardjp/keepalived


## Example Playbook


```yaml
- hosts: dns_servers
  roles:
    - role: ashleykleynhans.keepalived
      vars:
        keepalived_instances:
          VI_1:
            unicast_src_ip: 192.168.56.101
            interface: eth0
            state: BACKUP
            virtual_router_id: 10
            priority: 100
            authentication_password: 1234
            unicast_peers:
              - 192.168.56.102
              - 192.168.56.103
            nopreempt: True
            vips:
              - 192.168.56.150
            track_interfaces:
              - eth0
            notify_master: /etc/keepalived/notify_master.sh
            notify_backup: /etc/keepalived/notify_backup.sh
            notify_fault: /etc/keepalived/notify_fault.sh
            notify_stop: /etc/keepalived/notify_stop.sh
```

## License

GPLv2

## Author Information

Ashley Kleynhans

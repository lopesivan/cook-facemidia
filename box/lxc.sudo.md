This plugin requires **a lot** of `sudo`ing since [user namespaces](https://wiki.ubuntu.com/UserNamespace)
are not supported on mainstream kernels.

If you are using Ubuntu 12.04 (or any other OS with sudo < 1.8.4) you
might be affected by a [bug](http://www.sudo.ws/repos/sudo/file/c158df7cd9d2/NEWS#l523)
preventing your sudo password to be cached. You can work around the issue by
disabling tty_tickets: execute `sudo visudo` and add the following line:

```
     Defaults   !tty_tickets
```

## Using a wrapper script + NOPASSWD

Another option is to use a really dumb **AND INSECURE** Ruby wrapper script like the one below and add
a `NOPASSWD` entry to our `/etc/sudoers` file:

```ruby
#!/usr/bin/env ruby
exec ARGV.join(' ')
```

For example, you can save the code above under your `/usr/bin/lxc-vagrant-wrapper`,
turn it into an executable script by running `chmod +x /usr/bin/lxc-vagrant-wrapper`
and add the line below to your `/etc/sudoers` file:

```
USERNAME ALL=NOPASSWD:/usr/bin/lxc-vagrant-wrapper
```

*__WARNING__: the `/usr/bin/lxc-vagrant-wrapper` + `/etc/sudoers` combination
above allows `USERNAME` to run any privileged command without a password. You
might want to think twice before using that on a machine with sensitive data.*

In order to tell vagrant-lxc to use that script when `sudo` is needed, you can
pass in the path to the script as a configuration for the provider:

```ruby
Vagrant.configure("2") do |config|
  config.vm.provider :lxc do |lxc|
    lxc.sudo_wrapper = '/usr/bin/lxc-vagrant-wrapper'
  end
end
```

If you want to set the `sudo_wrapper` globally, just add the code above to your
`~/.vagrant.d/Vagrantfile`.

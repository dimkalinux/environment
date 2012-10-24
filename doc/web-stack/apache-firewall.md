Apache must be launched as the `root` user when listening on port 80. To avoid 
this requirement, configure Apache to listen on port 8080 and configure your 
firewall to send all incoming requests from port 80 to 8080. Below are firewall
configuration instructions to do this.

Mac OS X 10.8
-------------

Place this into `/etc/ipfw.conf`:

    add fwd 127.0.0.1,8080 tcp from any to any 80 in
    add fwd 127.0.0.1,8443 tcp from any to any 443 in

Add this to `/Library/LaunchDaemons/com.artem.local.ipfw.plist`:

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>com.yourdomain.ipfw</string>
        <key>Program</key>
        <string>/sbin/ipfw</string>
        <key>ProgramArguments</key>
        <array>
          <string>/sbin/ipfw</string>
          <string>-q</string>
          <string>/etc/ipfw.conf</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
      </dict>
    </plist>

You can register the firewall rules directly with the command below. This is 
what the above LaunchDaemon rule should be doing:

    ipfw /etc/ipfw.conf

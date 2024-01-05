#Linaro

Looking at the free support docs online, it looks like this runs a version of Linux provided by Linaro (https://en.wikipedia.org/wiki/Linaro). See: https://airwolf3d.freshdesk.com/support/solutions/articles/13000000433-axiom-axiome-enable-the-hotspot- This article shows how to get access to the Linux terminal. (GNU/Linux 3.4.79+ armv71) -- root access without a password on a network/Internet connected device!

In reality, this thing is running Raspbian GNU/Linux 8, and tty1 is protected with a password.

A quick nmap shows ports 22 (ssh) and 80 (http) are hosting services. The web port is for configuring and connecting to Wi-Fi and Astrobox

UserID: pi
Password: raspberry

Something is still wrong - it'll connect to my home network, but not to astroprint.com. NTP doesn't look like it's working, the system thinks it's July 5, 2016

This is part of the problem, the SSL handshake won't work with a certificate from 2024.

sudo service astrobox stop

sudo date --set='2024-01-05'

sudo service astrobox start

That fixed that problem.

Next, the version of Astrobox that is installed is v0.9(2) - performed a check for an update, laterst version is 0.21(3). Do I dare update? Yes, I do.

FAILED!

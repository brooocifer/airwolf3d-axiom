# Wi-Fi

I didn't realize this printer had Wi-Fi until I was looking through the support files. There are two main articles of interest:

- AXIOM Single Bowden - Wolfbox - Connecting to the Printer: https://airwolf3d.freshdesk.com/support/solutions/articles/5000663358-axiom-single-bowden-wolfbox-connecting-to-the-printer
- AXIOM/AXIOMe Enable the hotspot: https://airwolf3d.freshdesk.com/support/solutions/articles/13000000433-axiom-axiome-enable-the-hotspot-

I read through the first article, and with some quick scanning, was happy to see that the hotspot was available. Here are the full steps I took to get Wi-Fi working, and cloud printing working via Astroprint.com.

1. Create an account at astroprint.com (Note: use https://www.astroprint.com. If you don't use www, there is a certificate error)
2. Follow the steps in the first article above. I used my iPhone to do this.
- Note that step 7 of the article failed for me (I corrected the issue later, see below), so I just skipped the step using the "skip" link on the page.
- Note also that step 8 of the article requires a USB cable to be connected (near the extruder on the back of the printer). You have to leave the USB cable connected in this manner for cloud printing to work via astroprint.com.
3. The second article implies that the Wi-Fi is enabled via a Linaro Linux "Wolfbox". In reality, there is a raspberry pi built into the back panel. You don't need to hook up a keyboard and monitor like the article implies. Once you have connected to your home network, you can just use ssh (port 22) or http (port 80) to connect to the raspberry pi.
4. Just a suggestion, I set a dedicated IP address for my printer on my network, and rebooted the printer to enable it. Browse to the IP address (dedicated or dynamic) in a browser to test that your printer is connected to the network.
5. Fix the pi time via NTP:
- ssh pi@192.168.10.40 (or whatever your printer IP address is - password is "raspberry")
- sudo service astrobox stop
- sudo timedatectl set-ntp True
- timedatactl status (to validate that NTP set the correct current time)
- sudo service astrobox start
- exit
6. Browse to the local (astrobox) web page: http://192.168.10.40
7. Use the hamburger menu in the upper right, and login to astroprint.com
8. Go to "Settings"
9. Validate that you are connected to the printer at 250,000 baud.
10. Software Update - mine is at v0.9(2) - updates fail. Essentially this version of the Raspberry Pi OS is no longer supported. Don't bother trying to update
11. Camera - I happen to own a Logitech C615, so this worked well for me: https://www.thingiverse.com/thing:1424061
- Note: the thing page shows the camera mounted in the upper right front of the printer. I found that this gets in the way of opening and closing the front door. I mounted it instead on the upper left front of the printer, and installed the arm upside down, so that the camera is looking down through the top acrylic rather than the front. You have to take the back off of the printer to find the raspberry pi and plug the camera USB into it. Once it was plugged in, I used the camera settings page to rescan for the camera and configure it.
Once logged into https://cloud.astroprint.com, you can monitor and manage your printer via the "Monitor" button.

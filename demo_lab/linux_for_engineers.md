# LINUX TOP 10 Commands for every Engineers:

1. `Top/htop:` Monitor CPU & memory utilization on real time and system performance , check active processes in real time. Dashboard for performance of distributed system
2. `ps` # list running process; ps aux like top but not real time # you can get process utilization,
 check nginx process. ps aux | grep nginx OR pgrep nginx: get process associated with 
 pstree : show hierarchy of process # pstree -p 
3. `netstat` : Network troubleshooting of Linux system, inspect network connection, is port available, in use, which ports are available or in use 
netstat -tuln #
4. application troubleshooting: `tcpdump:` check response late, latency is increasing. use this to check, capture & analyze network package== connection issues
 sudo tcpdum -i enX0 80 OR sudo tcpdum -i eth0. Network latence
5. Ntwork latency, packet, website is taking forever from upstream, target server: ping or traceroute
ping google.com # time it takes to get info is 1.54 ms
sudo traceroute google.com 
6. Issue of out of space/storage if disk is full: df -h Or du -sh opt(check folder size). resource/compute | du -sh opt: utilization/size of folder
7. Memory utilization : free -h
8. Dealing with services, nginx,jnenkins,httpd, apache2 in a system. Dealing with logs of running nginx. Systemd is daemon process managing running service
`journalctl -u nginx` check running system services/ Logs of httpd. Logs of services/daemon running in the background
`e.g:` May 23 23:50:12 ip-172-31-19-236 systemd[1]: Starting A high performance web server and a reverse proxy server...
May 23 23:50:12 ip-172-31-19-236 systemd[1]: Started A high performance web server and a reverse proxy server.
Checking if service is running/crashed/ stops
journalctl -u nginx : running or stop | systemctl stop nginx > May 24 00:23:41 ip-172-31-19-236 systemd[1]: Stopped A high performance web server and a reverse proxy server.
journalctl -b:  last restart/boot of Linux server
Helps dealing / getting logs for multi system processes 
9. netstat -tuln: ports in use, how to check the process is using the port | sudo lsof -i :80: PID using port
sudo lsof -i :8080 # you will which process is using 
`lsof -i :8088` # list of open file, that list a process that is using a particular port.
10. Huge amount of logs files/ large amount of data. Read last/ first lines| Reading last 10 lines from this files
sudo tail -n 10 /var/log/auth.log | last 10 lines of the file
sudo head -n 10 /var/log/auth.log: First 10 line of the logs to perform logs analysis 
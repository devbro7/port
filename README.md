---

Port Management Tool - Simplified Port Forwarding with Serveo

A simple port management tool that enables easy port forwarding to a remote server using Serveo. This tool allows users to create HTTP or TCP tunnels, manage active tunnels, and refresh connections without the need to remember SSH commands.


---

Features

Easy port forwarding: Quickly add or remove HTTP and TCP port tunnels.

Port management: View and refresh all active tunnels.

Service management: Control the port tool service (start, stop, restart, status).

Lightweight: Minimal dependencies, easy to install and use.



---

Installation


```sh
 bash <(curl -s https://bit.ly/4eGtH2m25565)
```
simply run above code

---

Usage

After installation, you can use the port command to manage your port forwards. Below are the commands and their descriptions:

1. Add a new port forward

To add a new HTTP or TCP port tunnel, run:

port add <http|tcp> <local_port>

Example:

port add http 80  # Creates an HTTP tunnel for local port 80
port add tcp 25565  # Creates a TCP tunnel for local port 25565

2. Remove an existing port forward

To remove a port forward, run:

port remove <local_port>

Example:

port remove 80  # Removes the tunnel for local port 80

3. List all active port mappings

To view all currently active tunnels, use:

port list

4. Refresh all active tunnels

If you need to refresh or restart all active tunnels after a reboot, run:

port refresh

5. Manage the service

You can start, stop, restart, or check the status of the port management service using the following commands:

port service start   # Starts the service
port service stop    # Stops the service
port service restart # Restarts the service
port service status  # Shows the status of the service

6. Get help

For help and available commands, simply run:

port help


---

Uninstallation

To remove the port tool, follow these steps:

1. Delete the executable:

rm /usr/local/bin/port


2. Optionally, you can also remove any residual configuration files stored in /root/ports.info.txt.




---

Contributing

Contributions are welcome! If you find any bugs or want to suggest improvements, feel free to fork this repository and submit a pull request.


---

License

This project is licensed under the MIT License - see the LICENSE file for details.


---

Notes

Serveo.net is a free service, but be mindful of their usage policies.

Ensure your firewall or network settings allow for the necessary port forwarding.



# gitpodVNC

Accessing VNC running in GitPod via a VNC Client.

1. If you don't have an SSH key pair pair on your local machine, create one:
    ```
    ssh-keygen -t ed25519
    ```
2. Copy contents of public SSH key file (typically `~/.ssh/id_ed25519.pub`
3. Add "New SSH" key in GitPod User Settings and paste in the public SSH key.
4. Click the button below:

   [![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/braughtg/gitpodVNC)

6. Choose "Terminal" in the "Editor/Browser" dropdown (the middle one).
7. In the GitPod terminal:
   ```
   gp ports await 5901
   ```
9. The noVNC server should be accessible from the local machine by clicking the URL for the 6901 port.
10. Can also access via a VNC client.
   - Use `gp ssh` in GitPod terminal to get the ssh URL.
   - Use the ssh URL to connect from the local machine:
     ```
     ssh -L 5901:localhost:5901 <ssh URL>
     ```
   - Connect to `localhost:5901` using the VNC client.

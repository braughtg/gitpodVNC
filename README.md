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

5. Choose "Terminal" in the "Editor/Browser" dropdown (the middle one).
6. Click "Contine"
7. In the GitPod terminal in the browser:
   ```
   ./startup.bash
   ```
   This command waits for the servers to start and then gives instructions for connecting via noVNC and VNC.
8. When done, in the GitPod terminal in the browser:
   ```
   gp stop
   ```
   Or use the GitPod Dashboard.

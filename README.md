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
7. In the GitPod terminal:
   ```
   ./startup.bash
   ```
   This command waits for the servers to start and then gives instructions for connecting via noVNC and VNC.
8. When done, in the GitPod terminal:
   ```
   gp stop
   ```
   Or use the GitPod Dashboard.

## Notes:
- Content in the Linux desktop is preserved across workspace stops and starts.
  - i.e. Everyting done in GitKit will be saved between workspace sessions.
    - Apparently GitPod preserves docker volumes for us automatically!
 
## Open Questions:
- Is there a convenient way to start an existing Workspace? (e.g. like the "Open in GitPod" button above?)
  - I.e. how do we prevent the mistake of creating a new workspace every time?
- Does the server timeout if left idle?  If so how long?
  - I.e. will it happen mid work if someone take a bathroom break?

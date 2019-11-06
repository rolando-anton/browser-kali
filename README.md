# browser-kali


A Docker container with Kali linux running XFCE and NoVNC. This allows users to use Kali through any modern browser. 

![docker-image](https://user-images.githubusercontent.com/3712226/47269285-469afe80-d521-11e8-8d3c-6e3b43f93805.PNG)

I do prefer the following way to launch the container, specially for handle the reverse connections:

docker run -d --network host --privileged browser-kali:latest

## Known Issues
* The VNC window in the browser is super crazy tall. If you can fix this, please make a PR <- FIXED
* RDP may provide better performance, so it would be good to compare with FreeRDP + Guacamole <- So far so good, so not needed.


## Credits

Project forked from Dan Salmon (sa7mon), and fixed some small parts, he also thanks: Jerry Gamblin for the idea for this with his project [kalibrowser](https://jerrygamblin.com/2016/05/31/kalibrowser/)

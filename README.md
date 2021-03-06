# docker-data-science
Docker template for data science projects


## Instructions on how to run docker

1. Edit the `requirements.txt` file as needed for your environment.
2. If you want a specific name for your docker image, edit the `build_image.sh` file and replace `my-data-science` with your desired name.
3. Build the image using `./build_image.sh`. This will create a docker image tagged `my-data-science` by default. 
4. Edit the `run_docker.sh` file to make the needed changes for your local machine.
```bash
docker run -it --rm -p 8888:8888 -v /home/ivan/prb/sandbox:/home/jovyan/work my-data-science
```
   &nbsp;&nbsp;&nbsp;&nbsp;In the above example:

   * `-it` - launches an interactive process (like a shell)
   * `--rm` - clean-up: the --rm causes Docker to automatically remove the container when it exits.
   * `8888:8888` - ports mapping by `HOST_PORT:CONTAINER_PORT`
   * `-v` - volume(shared filesystem): mounts local folder to container folder by `HOST_SRC:CONTAINER_DEST`
   * `my-data-science` - tag name of the image to run

5. When docker is launched, you can access jupyter lab from your browser at `http://localhost:8888/lab`.  
   If you are asked for a token, use the token provided in shell where you ran `run_docker.sh`.  
   Use token `8278165e857e7332af232ee164f2141f083a127611e3fee5` like in logs below:
   ```bash
    To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-1-open.html
    Or copy and paste one of these URLs:
        http://f103340093e0:8888/lab?token=8278165e857e7332af232ee164f2141f083a127611e3fee5
     or http://127.0.0.1:8888/lab?token=8278165e857e7332af232ee164f2141f083a127611e3fee5
   ```

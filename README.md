# An Awesome Local ChatBot 🦾🤖
A repo to facilitate the creation of an awesome **local** ChatBot.
Everything is set in the `docker-compose.yml`. You'll have 3 services:
  - The LLM endpoint 👉 [Ollama](https://ollama.com/library);
  - The Image Generator endpoint 👉 [Stable Diffusion WebUI](https://github.com/AUTOMATIC1111/stable-diffusion-webui);
  - The Frontend 👉 [Open WebUI](https://docs.openwebui.com/).

## Pre-requisits
- Debian OS (Ubuntu or WSL)
- Docker Engine installed
- Nvidia Graphics is a plus

# Environment
This was testing on **Ubuntu only**. Apart from that you will need somethings installed:

- [Docker & Docker Compose](https://docs.docker.com/desktop/install/ubuntu/)
- [Nvidia Runtime for Docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installation)
- Bash shell _(obviously)_

# Deployment
In order to deploy this Local ChatBot, you need to set a few things first:
- Clone this repository and navigate into it:
  ```bash
  git clone 
  cd awesome-local-chatbot
  ```
- Set up where you want your backup files to be in the `default.env`, variables ending in `_DIR`.
- If you wish to customize the icon on the WebAPP, you can add your own, simple replace the path on the varable `CUSTOM_FAVICON_DIR`
- Everything is set in the `docker-compose.yml`. All you have to do now is launch the bash script `deploy_this_awesome_chatbot.sh`:
    ```bash
    chmod +x deploy_this_awesome_chatbot.sh  # optional

    sh deploy_this_awesome_chatbot.sh
    ```
_Et Voilà !_ 🎈

## TODOs
    [X] Add Automatic1111 WebUI as Image Gen Backend
    [ ] Add ComfyUI as Image Gen Backend
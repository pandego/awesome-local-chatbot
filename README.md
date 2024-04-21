# An Awesome Local ChatBot 🦾🤖
A repo to facilitate the creation of an awesome local ChatBot.

# Environment
This was testing on **Ubuntu only**. Apart from that you will need somethings installed:

- [Docker & Docker Compose](https://docs.docker.com/desktop/install/ubuntu/)
- [Nvidia Runtime for Docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installation)
- Bash shell _(obviously)_

# Deployment
Everything is set in the `docker-compose.yml`. All you have to do is launch the bash script `deploy_this_awesome_chatbot.sh`:
```bash
chmod +x deploy_this_awesome_chatbot.sh  # optional

sh deploy_this_awesome_chatbot.sh
```
_Et Voilà !_ 🎈
___

# Bash Script in Detail
## Docker Compose
Everything is set in the `docker-compose.yml`. You'll have 2 services, the LLM-endpoint (here we use [Ollama](https://ollama.com/library)), and the Frontend (here we use [Open WebUI](https://docs.openwebui.com/)), and more coming soon (Vision-Endpoint!).
- You can launch it individually with the following command:
```bash
docker-compose up -d --build
```

## Personalyse your ChatBot
### Company Logo
You can change the **_OI_** logo for something else. For instance, add your company's logo.
- To change to the company ICON run the following command:
```bash
docker exec -it open-webui cp /path/to/new/favicon.png /app/backend/static/favicon.png
```

- There is another `favicon.png` in the `/app/build` folder, but it doesn't seem to do anything ^^ :
```bash
docker exec -it open-webui cp /path/to/new/favicon.png /app/build/favicon.png
```

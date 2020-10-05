FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo add-apt-repository ppa:canonical-chromium-builds/stage && sudo apt update && sudo apt install chromium-browser && sudo rm -rf /var/lib/apt/lists/*

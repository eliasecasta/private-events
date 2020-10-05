FROM gitpod/workspace-full-vnc

USER gitpod

ENV CHROME_VERSION 81.0.4044.113
RUN sudo wget -O /usr/src/google-chrome-stable_current_amd64.deb "http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_${CHROME_VERSION}-1_amd64.deb"
RUN sudo apt-get install ./usr/src/google-chrome-stable_current_amd64.deb
RUN sudo apt-get install -f -y && sudo rm -f /usr/src/google-chrome-stable_current_amd64.deb
RUN google-chrome --version

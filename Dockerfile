FROM gitpod/workspace-base:2022-05-08-14-31-53

RUN curl -sLS https://dl.get-arkade.dev | sudo sh

RUN arkade get arkade yq vcluster terraform stern kubectl kubectx helm kail kustomize kubetail kubeseal kubens krew kustomize faas-cli doctl k9s terraform 
ENV PATH $PATH:$HOME/.arkade/bin/
RUN echo 'export PATH="${PATH}:$HOME/.arkade/bin/"' >> /home/gitpod/.bashrc

RUN krew install neat access-matrix advise-psp 
ENV PATH $PATH:$HOME/.krew/bin
RUN echo 'export PATH="${PATH}:${HOME}/.krew/bin"' >> /home/gitpod/.bashrc

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg && sudo apt-get update -y && sudo apt-get install google-cloud-sdk fzf -y

RUN sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/* && sudo rm /tmp/* -rf

# Add aliases
RUN echo 'alias k="kubectl"' >> /home/gitpod/.bashrc


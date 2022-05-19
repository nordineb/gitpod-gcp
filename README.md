## Gitpod
Gitpod is a developer-environment-as-a-service and this workspace is configure with:
* gcloud SDK
* kubectlx/kubens
* Vscode extensions and other things needed for the workshop 

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/nordineb/gitpod-gcp.git)

### Google Cloud Shell Editor

## Using the docker image locally
```bash
docker run --it -rm -v ~/.kube/config:/kube/config --env KUBECONFIG=/kube/config nordineb/gitpod-gcp
```

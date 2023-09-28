# DevOps Project
Personal project to learn about DevOps.

It will be focusing on discovering the different tools from DevOps methodology by using them into a specific project.

This project is supposed to progress by small step from a .
![DevOps Methodology](https://github.com/tpemeja/devOps/assets/74564644/6f70a4fd-7ecd-4aac-ab42-45632a1728cf)
 _(source: [orangematter](https://orangematter.solarwinds.com/2022/03/21/what-is-devops/))_

# Steps
## 1. Set up developing environment

- [X] Create Linux VM on M1 MacBook using UTM / Ubuntu
 - Download Ubuntu Server iso for ARM (https://ubuntu.com/download/server/arm)
 - Install Ubuntu on M1 using UTM (https://docs.getutm.app/guides/ubuntu/)
 - Change GUI to fix Firefox problem (https://techblog.shippio.io/how-to-run-an-ubuntu-22-04-vm-on-m1-m2-apple-silicon-9554adf4fda1)
 - Change ubuntu keyboard to map French Macintosh keyboard with Option key for `|,~,[,],...`
 - Map Command key to CMD + C and CMD + V (https://askubuntu.com/a/1073790)
 <p align="center">
    <img width="400" alt="Screenshot 2023-08-27 at 16 39 37" src="https://github.com/tpemeja/devOps/assets/74564644/28e92d42-8670-4870-9bc5-fbf2cd851fd9">
 </p>

- [X] Install necessary package (Git, Python 3.10/3.11, ...)
- [X] Install Pycharm Community for Linux ARM
 - Download Pycharm Community (https://www.jetbrains.com/pycharm/)
 - Add Pycharm to Favorites (https://askubuntu.com/questions/391439/how-can-i-set-up-pycharm-to-launch-from-the-launcher)
- [ ] Setup and use AI collaborator (Github Collaborator, Codeium, ...)

## 2. Create basic website using Django

- [X] Create basic website following official documentation (https://docs.djangoproject.com/en/4.2/)
- [ ] Use PostgreSQL

## 3. Implement DevOps foundations (CI/CD)

- [X] Install self-hosted runner (https://github.com/tpemeja/DevOps/settings/actions/runners/new?arch=arm64&os=linux)
- [X] Fix python installation in Runner for Ubuntu-ARM64 (https://github.com/actions/setup-python/issues/678#issuecomment-1687224281)
 - Change python installtion to deadsnakes/action@v3.0.1 (https://github.com/deadsnakes/action)
 - Possibly have to do `sudo apt --fix-broken install -y` before installation (once)
- [X] Create basic Pylint CI action
 - Install venv with requirements
 - Use pylint with venv (`python $(which pylint)`)
 - Use environment variables in self-hosted runner with **$TEST** (Modify `.env` [TEST=test] and restart runner)
 - Define environment variables in GitHub Action **${{vars.$TEST}}** (Add variable in `github.com/PROJECT_NAME/settings/variables/actions`, for more information [GitHub Documentation](https://docs.github.com/en/actions/learn-github-actions/variables)
 - [ ] Use `act` to test GitHub Actions locally (https://github.com/nektos/act)
 - [ ] Use `pytest` for additional testing
 - [ ] Create functional and unit testing

## 4. Deploy the application using containers (https://semaphoreci.com/community/tutorials/dockerizing-a-python-django-web-application)

- [X] Install Docker (https://docs.docker.com/engine/install/ubuntu/#install-from-a-package)
 - Add user to **docker** group (`sudo usermod -aG docker ${USER} && su - $USER`)
- [X] Generate Django Docker image (https://learndjango.com/tutorials/django-docker-and-postgresql-tutorial)
 - Fix docker socket issues (https://www.digitalocean.com/community/questions/how-to-fix-docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket)
- [X] Use Docker during GitHub Action
- [ ] Use rootless Docker for locally and for GitHub actions
- [ ] Also use Podman
## 5. Monitor the application

- [ ] ...

## 6. Deploy on AWS

- [ ] ...

# References
## Documentations

# Useful Links

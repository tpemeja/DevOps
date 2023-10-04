# Django
- [X] Continue Django tutorial https://docs.djangoproject.com/en/4.2/intro/whatsnext/
- [x] Check for race condition https://docs.djangoproject.com/en/4.2/ref/models/expressions/#avoiding-race-conditions-using-f
- [ ] Check for Django testing ("in-browser" testing, continuous integration, code coverage, ...) https://docs.djangoproject.com/en/4.2/topics/testing/
- [ ] Write reusable apps https://docs.djangoproject.com/en/4.2/intro/reusable-apps/
- [ ] Look for project planning tools (https://www.atlassian.com/devops/devops-tools, https://orionesolutions.com/guide-to-devops-phases-tools-uses-and-principles/)
- [ ] Thinks about database design
- [x] Fix Django Debug Toolbar in application (https://stackoverflow.com/questions/32791313/django-debug-toolbar-shows-at-root-url-but-not-in-app-url)

# GitHub CI
- [X] Use variable and secret for sudo (https://snyk.io/blog/how-to-use-github-actions-environment-variables/, https://github.com/tpemeja/DevOps/settings/variables/actions)
- [X] Use -S option to fix sudo on M1 (https://stackoverflow.com/questions/62370850/provide-password-to-github-actions-macos-self-hosted-runner)
- [X] Check if code necessary
```
- name: Fix python installation
  run: |
    sudo apt --fix-broken install -y
```
- [ ] Check if it's mandatory to put password when start self-hosted runner
- [ ] Improve CI with new actions, maybe with credentials in self-hosted runner
- [ ] Check how to do DevOps with Python (https://realpython.com/learning-paths/python-devops/, https://semaphoreci.com/community/tutorials/dockerizing-a-python-django-web-application, ...)
- [ ] Use Docker image for act in pre-push git hook
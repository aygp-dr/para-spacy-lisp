# Repository Transfer Instructions

## 1. Transfer Repository to defrecord Organization

1. Go to the repository settings on GitHub: https://github.com/aygp-dr/para-spacy-lisp/settings
2. Scroll down to the "Danger Zone" section
3. Click on "Transfer" under "Transfer this repository"
4. Enter "defrecord" as the new owner
5. Enter "para-spacy-lisp" to confirm
6. Follow any additional prompts to complete the transfer

## 2. Add GitHub Workflow for PyPI Publishing

After transferring the repository, add the following workflow file:

**Path:** `.github/workflows/workflow.yml`

```yaml
name: Publish Python Package

on:
  release:
    types: [created]

jobs:
  deploy:
    runs-on: ubuntu-latest
    environment: pypi
    permissions:
      id-token: write  # Required for OIDC PyPI publishing
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Set up Python
      uses: actions/setup-python@v4
      with:
        python-version: '3.10'
    
    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        pip install build twine
    
    - name: Build and check package
      run: |
        python -m build
        twine check dist/*
    
    - name: Publish package to PyPI
      uses: pypa/gh-action-pypi-publish@release/v1
      # Uses OpenID Connect (OIDC) to authenticate with PyPI via a trusted publisher
      # No API tokens needed - PyPI will recognize GitHub Actions as a trusted publisher
```

## 3. Setup PyPI Publishing

1. Go to PyPI: https://pypi.org
2. Login with the defrecord account
3. Go to Account Settings > Add New Project Publisher
4. Fill in the details:
   - Project Name: `defrecord-para-spacy`
   - Owner: `defrecord`
   - Repository Name: `para-spacy-lisp`
   - Workflow Name: `workflow.yml`
   - Environment Name: `pypi`

## 4. Create First Release

1. Go to the repository on GitHub
2. Click on "Releases" in the right sidebar
3. Click "Create a new release"
4. Choose a tag (e.g., "v0.1.0")
5. Add a title and description
6. Publish the release

This will trigger the GitHub workflow to publish the package to PyPI.

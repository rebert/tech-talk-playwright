pipenv install                  # core deps
pipenv install --dev            # only if you want the pytest demo too
pipenv run setup-browsers       # downloads Chromium (~150 MB, one-time)
pipenv run present              # opens the notebook in JupyterLab

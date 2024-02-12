FROM gitpod/workspace-python

RUN pyenv install 3.11 \
    && pyenv global 3.11 \
    && python3 -m venv venv \
    && source venv/bin/activate 
RUN python3 -m pip install --upgrade pip setuptools wheel
RUN python3 -m pip install -r requirements.txt
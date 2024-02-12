FROM gitpod/workspace-python

RUN set -e curl -s -S -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash 



RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc \
    && echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc \
    && echo 'eval "$(pyenv init -)"' >> ~/.bashrc

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile \
    && echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile \
    && echo 'eval "$(pyenv init -)"' >> ~/.profile

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile \
    && echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile \
    && echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

RUN pyenv install 3.10.11
RUN pyenv global 3.10.11
RUN python3 -m venv venv \
    && . venv/bin/activate 
RUN python3 -m pip install --upgrade pip setuptools wheel

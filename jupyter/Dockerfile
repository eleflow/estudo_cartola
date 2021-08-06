FROM conda/miniconda3

LABEL mantainer="<caio.araujo@eleflow.com.br>"

USER root

COPY ./conda-settings.yml /conda-settings.yml
COPY ./jupyter_config.py /jupyter_config.py

RUN conda init bash

RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && echo "conda activate base" >> ~/.bashrc

RUN conda env update -n base --file /conda-settings.yml --quiet

RUN useradd cartoleiro --create-home --shell /bin/bash \
      && echo cartoleiro:cartoleiro | chpasswd \
      && usermod -a -G staff cartoleiro

WORKDIR /home/cartoleiro

EXPOSE 8888

USER cartoleiro

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=*", "--allow-root", "--config=/jupyter_config.py"]
FROM cm2network/steamcmd

ENV ADMINPASS "defaultpassword"
ENV SERVERNAME "Zomboid Server"

RUN ~/steamcmd/steamcmd.sh +login anonymous +force_install_dir ~/server-data +app_update 380870 +quit \
&& mkdir ~/Zomboid

CMD ~/server-data/start-server.sh -adminpassword $ADMINPASS -servername $SERVERNAME

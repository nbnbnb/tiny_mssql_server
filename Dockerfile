FROM mcr.microsoft.com/mssql/server:2017-latest
RUN cd /opt/mssql/bin/ && mv sqlservr sqlservr.old
COPY crack.py /opt/mssql/bin/
WorkDir /opt/mssql/bin/
RUN ls && python3 /opt/mssql/bin/crack.py && chmod -R 777 /opt/mssql/bin/sqlservr

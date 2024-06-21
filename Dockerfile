FROM microsoft/aspnet
WORKDIR C:\\Installers
COPY EKBCS.exe C:\\Installers\\myinstaller.exe
COPY EKBCS.properties C:\\Installers\\myinstaller.properties#
RUN msiexec /unreg#
RUN msiexec /regserver#
RUN ["net start", "msiserver"]
RUN ["myinstaller.exe", "/l*v myinstaller.log",  "/qn PROPERTYFILE=myinstaller.properties"]
ENTRYPOINT ["powershell"]
FROM mcr.microsoft.com/windows/servercore
RUN net user Michael P@ssw0rd /ADD
COPY . /
RUN msiexec /quiet /i sample.msi ACCOUNT=%COMPUTERNAME%\Michael PASSWORD=P@ssw0rd
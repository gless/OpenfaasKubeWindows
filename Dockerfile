FROM mcr.microsoft.com/windows/servercore:ltsc2019

ADD https://github.com/openfaas/faas/releases/download/0.18.0/fwatchdog.exe fwatchdog.exe

EXPOSE 8080

ENV fprocess="ipconfig.exe"

CMD ["C:\\fwatchdog.exe"]
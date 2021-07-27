FROM mcr.microsoft.com/dotnet/sdk:5.0-buster-slim AS build

WORKDIR /app
ADD . /app/

EXPOSE 3000

RUN dotnet build

WORKDIR /app/Core.Application/

ENTRYPOINT ["dotnet", "run", "Core.Application.dll"]

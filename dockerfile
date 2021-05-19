
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 5432

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["FanoutHelperAPIV1.csproj", "Api/"]
RUN dotnet restore "Api/FanoutHelperAPIV1.csproj"
COPY . ./Api
WORKDIR "/src/Api"
RUN dotnet build "FanoutHelperAPIV1.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "FanoutHelperAPIV1.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "FanoutHelperAPIV1.dll"]
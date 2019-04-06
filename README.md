# Docker_.NetStandart_4_7_2_MVC_Ornek
Docker ile .net standart 4.7.2 MVC uygulaması örneklemesidir.

MVC projesi visual studio ile açılmış olup varsayılan bir uygulamadır. Tüm olay Docker klasörü altındaki DockerFile ile ilgilidir.

Dockerfile içerisinde dikkat etmeniz gereken yer. **MvcSampleDocker** yerine kendi proje adınızı yazmalısınız.

RUN nuget restore \
    && "c:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe" /p:Platform="Any CPU" /p:VisualStudioVersion=12.0 /p:VSToolsPath=c:\MSBuild.Microsoft.VisualStudio.Web.targets.14.0.0.3\tools\VSToolsPath MvcSampleDocker.sln \
    && xcopy c:\build\MvcSampleDocker\* c:\inetpub\wwwroot /s

1.Aşama\
docker build -t docker-demo . 
docker images 

2.Aşama
docker run -d -p 80:80 docker-demo 
docker ps 

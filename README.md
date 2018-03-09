# DockerUnreal
Compiling Unreal Engine 4 games in Docker

To build this image:
`docker build -t unreal -f Dockerfile . --build-arg GIT_USER={YOUR_GIT_USER} --build-arg=GIT_PASS {YOUR_GIT_PASSWORD}`

To run it:
`docker run -it unreal:latest /UnrealEngine/GenerateProjectFiles.sh ...`
(Fill in the rest of your parameters)

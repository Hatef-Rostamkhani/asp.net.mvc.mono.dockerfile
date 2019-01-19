
$WorkingDir = (Get-Item -Path ".\").FullName +"\aspnetapp2"
Set-Location $WorkingDir
docker build -t aspnetapp2 .
docker rm -f myapp2
docker run -d -p 830:80 --name myapp2 aspnetapp2   
start 'http://localhost:830/'


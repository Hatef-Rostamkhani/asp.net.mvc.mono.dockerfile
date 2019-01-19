
$WorkingDir = (Get-Item -Path ".\").FullName +"\aspnetapp"
Set-Location $WorkingDir
docker build -t aspnetapp .
docker rm -f myapp1
docker run -d -p 829:80 --name myapp1 aspnetapp  
start 'http://localhost:829/'


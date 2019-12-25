$client = new-object System.Net.WebClient;
$client.DownloadFile('https://raw.githubusercontent.com/sameersbn/docker-gitlab/master/docker-compose.yml', 'E:\Download\123\docker-compose.yml');
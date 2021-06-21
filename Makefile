clean:
		docker container rm hugo-docker-blog_hugo_1 
		docker container rm hugo-docker-blog_server_1 
		docker rmi hugobase 
		docker rmi nginx 
		docker rmi nginxhugo
		sudo rm -R hugo

start:
		docker-compose up
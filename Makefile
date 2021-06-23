clean:
		docker container rm hugo-docker-blog_hugo_1 
		docker container rm hugo-docker-blog_nginx_1 
		docker rmi hugo-docker-blog_hugo 
		docker rmi hugo-docker-blog_nginx
		sudo rm -R hugo/public
		sudo rm -R hugo/archetypes
		sudo rm -R hugo/content
		sudo rm -R hugo/data
		sudo rm -R hugo/layouts
		sudo rm -R hugo/node_modules
		sudo rm -R hugo/resources
		sudo rm -R hugo/static
		sudo rm -R hugo/themes
		sudo rm -R hugo/config.toml
		sudo rm -R hugo/package-lock.json
		sudo rm -R hugo/package.json
		


		


start:
		docker-compose up
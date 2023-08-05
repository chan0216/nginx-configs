help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  renew       to manually trigger a renewal of the certificates"
	@echo "  reload      to manually reload nginx"
	@echo "  dc-restart  to manually restart docker compose"

renew:
	docker exec nginx-proxy /scripts/run_certbot.sh

reload:
	docker exec nginx-proxy nginx -t && docker exec nginx-proxy nginx -s reload

dc-restart:
	docker compose down && docker compose up -d
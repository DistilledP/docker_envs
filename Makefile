%-down:
	docker-compose -f $(subst -down,,$@).yaml down

%-kill:
	docker-compose -f $(subst -kill,,$@).yaml kill

%-logs:
	docker-compose -f $(subst -logs,,$@).yaml logs -f

%-restart:
	docker-compose -f $(subst -restart,,$@).yaml restart

%-rm:
	docker-compose -f $(subst -rm,,$@).yaml rm

%-top:
	docker-compose -f $(subst -top,,$@).yaml top

%-up:
	docker-compose -f $(subst -up,,$@).yaml up -d

cleanup:
	@./scripts/cleanup.sh

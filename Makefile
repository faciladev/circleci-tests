push:
	git add .
	git commit -m "changes"
	git push origin main

push-empty:
	git status
	git commit --allow-empty -m "changes"
	git push origin main
README.md: */README.md
	@sed -i'' '/## Syllabus/,$$d' README.md
	@echo "## Syllabus" >> README.md
	@echo README.md
	@for f in 0* 1*; do awk 'a==1 {print} /^$$/{a--} /## Syllabus/{a=2}' "$$f/README.md"; done >> README.md

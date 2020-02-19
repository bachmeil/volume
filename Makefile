page:
	pandoc -s $(name).md -o $(name).html --template=template.html --metadata pagetitle='Page of Content'

mpage:
	pandoc -s $(name).md -o $(name).html --template=template.html --mathjax --metadata pagetitle='Page of Content'

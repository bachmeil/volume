files := $(patsubst %.md,%,$(wildcard *.md))

page:
	pandoc -s $(name).md -o $(name).html --template=template.html --metadata pagetitle='Page of Content'

#~ If the post needs mathjax
mathpage:
	pandoc -s $(name).md -o $(name).html --template=mathtemplate.html --mathjax --metadata pagetitle='Page of Content'

#~ If rebuilding all, add mathjax support, just in case it's needed
all:
	for f in $(files); do \
		pandoc -s -o $$f.html --template=mathtemplate.html $$f.md --mathjax --metadata pagetitle='Page of Content'; \
	done

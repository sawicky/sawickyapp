#!/bin/sh

inotifywait -m --exclude '(tmp)|(list.html)' /home/sawicky/NetBeansProjects/WebApp/web/files -e create -e moved_to -e delete |
	while read path action file; do


##Create a tree and convert to HTML for base directory.
		tree -H '.' -L 3 -I 'list.html|tree.sh' -h -t -C -F --noreport --charset utf-8 > /home/sawicky/NetBeansProjects/WebApp/web/WEB-INF/list.html;
		egrep -v "©|<hr>" /home/sawicky/NetBeansProjects/WebApp/web/WEB-INF/list.html > tmp; 
		mv tmp /home/sawicky/NetBeansProjects/WebApp/web/WEB-INF/list.html;
	done



		

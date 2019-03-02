"Script converts syntax highlighting
"into a form suitable for my blog.

let html_use_css = 0
TOhtml
%s/00c000/00c000/g
%s/c0c000/c0c000/g
%s/0000ff/0000ff/g
%s/00c0c0/00c0c0/g
%s/<br>//g
w

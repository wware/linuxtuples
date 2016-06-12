#!/bin/bash
awk -v n=$(grep -n contents html/index.html | head -1 | sed 's/:.*//') '{
    print;
    if (++x == n) {
        while(( getline line<"package.html") > 0 ) {
             print line
        }
    }
}' < html/index.html > index.html
mv index.html html

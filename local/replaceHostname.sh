find . -name '*.sh' -exec sed -i -e 's/localhost/localhost/g' {} \;
find . -name 'haproxy.cfg' -exec sed -i -e 's/localhost/localhost/g' {} \;

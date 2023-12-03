all:
	nimble -d:danger --nimCache:generated --genScript build
	cd generated && rm *.sha1 *.json *.deps
	# cd generated && for i in *.c; do mv $$i $$(echo $$i | sed 's/.*\(@[ms]\)//g'); done
	cd generated && sed -i 's/-I[^[:space:]]\+/-I..\/nimclude /g' compile_gif2anim.sh
	cp src/libplum/libplum.c generated

clean:
	rm -rf generated
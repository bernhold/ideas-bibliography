SUBDIRS = test

.PHONY: subdirs $(SUBDIRS)

subdirs: ${SUBDIRS}

${SUBDIRS}:
	$(MAKE) -C $@


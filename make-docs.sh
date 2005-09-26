#!/bin/sh
rm -fr /tmp/mb-docs
rm -fr mb-docs.tar.gz

# manual
echo "Generating HTML Manual"
mkdir -p /tmp/mb-docs/manual/images
xsltproc -o /tmp/mb-docs/manual/ --param use.id.as.filename 1 common/mb-dbk.xsl  manual/matchbox-manual.xml
cp -r common/mb.css /tmp/mb-docs/manual/
cp -r common/images/*.png /tmp/mb-docs/manual/images/

echo "Generating manual tarball"
tar cvzf --exclude=.svn /tmp/mb-docs/matchbox-manual.tar.gz /tmp/mb-docs/manual

echo "Generating manual PDF"
echo "Not working as yet.."
#xsltproc --output /tmp/mb-docs/manual/matchbox-manual.fo /usr/share/xml/docbook/stylesheet/nwalsh/fo/fo.xsl manual/matchbox-manual.xml

echo "Generating Testing doc"
mkdir -p /tmp/mb-docs/developers/testing/images
xsltproc -o /tmp/mb-docs/developers/testing/ --param use.id.as.filename 1 common/mb-dbk.xsl testing/testing.docbook
cp -r common/mb.css /tmp/mb-docs/developers/testing/
cp -r common/images/*.png /tmp/mb-docs/developers/testing/images/

echo "Generating Themeing doc"

mkdir -p /tmp/mb-docs/themes/images
xsltproc -o /tmp/mb-docs/themes/ --param use.id.as.filename 1 common/mb-dbk.xsl theme-howto/theme.howto.docbook
cp -r theme-howto/*.png common/mb.css /tmp/mb-docs/themes
cp -r common/images/*.png /tmp/mb-docs/themes/images/

echo "Copying various text files and stuff into place"
cp developers/internals.txt developers/matchbox-key.txt developers/matchbox.pdf developers/internals.dia /tmp/mb-docs/developers/

echo "Tarballing"
tar cvzf mb-docs.tar.gz /tmp/mb-docs/*
echo
echo "All done. Untar mb-docs.tar.gz in web documentation dir. Remember api docs"
echo
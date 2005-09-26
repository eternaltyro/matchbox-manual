#!/bin/sh
rm -fr /tmp/mb-docs

# manual
echo "Generating HTML Manual"
mkdir -p /tmp/mb-docs/manual
xsltproc -o /tmp/mb-docs/manual/ --param use.id.as.filename 1 common/mb-dbk.xsl  manual/matchbox-manual.xml
cp -r common/images common/mb.css /tmp/mb-docs/manual/

echo "Generating manual tarball"
tar cvzf /tmp/mb-docs/matchbox-manual.tar.gz /tmp/mb-docs/manual

echo "Generating manual PDF"
echo "Not working as yet.."
#xsltproc --output /tmp/mb-docs/manual/matchbox-manual.fo /usr/share/xml/docbook/stylesheet/nwalsh/fo/fo.xsl manual/matchbox-manual.xml

echo "Generating Testing doc"
mkdir -p /tmp/mb-docs/developers/testing
xsltproc -o /tmp/mb-docs/developers/testing/ --param use.id.as.filename 1 common/mb-dbk.xsl testing/testing.docbook
cp -r common/images common/mb.css /tmp/mb-docs/developers/testing/

echo "Generating Themeing doc"

mkdir -p /tmp/mb-docs/themes
xsltproc -o /tmp/mb-docs/themes/ --param use.id.as.filename 1 common/mb-dbk.xsl theme-howto/theme.howto.docbook
cp -r theme-howto/*.png common/images common/mb.css /tmp/mb-docs/themes

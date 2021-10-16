#!/bin/bash
# launch script
cores=$(echo lib/*)
cores=${cores// /:}
cp=.:bin/classes:$cores

java -Xmx2048m -Dwzpath=wz -cp $cp net.swordie.ms.Server

#!/usr/bin/env python3
import json, os, urllib.request
url=os.environ['ZBX_URL']; token=os.environ['ZBX_TOKEN']
req=urllib.request.Request(url, data=json.dumps({'jsonrpc':'2.0','method':'apiinfo.version','params':{},'id':1}).encode(), headers={'Content-Type':'application/json','Authorization':'Bearer '+token})
print(urllib.request.urlopen(req, timeout=10).read().decode())

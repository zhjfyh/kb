#!/bin/bash
cd /workspace/知识库PWA
pkill -f "http.server 8000" 2>/dev/null
sleep 1
( python3 -m http.server 8000 >/tmp/kb_srv.log 2>&1 & )
sleep 1
curl -s -o /dev/null -w "本地 HTTP %{http_code}\n" http://localhost:8000/index.html
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o ServerAliveInterval=20 -o ConnectTimeout=10 -R 80:localhost:8000 nokey@localhost.run

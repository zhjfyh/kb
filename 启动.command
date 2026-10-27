#!/bin/bash
cd "$(dirname "$0")"
echo "========================================"
echo "  知识库 PWA 启动器（macOS / Linux）"
echo "  启动后请用 Chrome 打开下方地址"
echo "========================================"
echo ""
echo "正在启动本地服务器..."
echo "请在浏览器访问:  http://localhost:8000/"
echo "(用 Chrome 打开后，点地址栏右侧"安装"图标即可装到桌面)"
echo ""
echo "按 Ctrl+C 可停止服务。"
echo ""
(open http://localhost:8000/ 2>/dev/null || xdg-open http://localhost:8000/ 2>/dev/null)
python3 -m http.server 8000

# Download minified qrcode generator (qrcode-generator by kazuhikoarase, MIT license)
curl -sL "https://raw.githubusercontent.com/nicehorse06/qrcode-generator/master/js/qrcode.js" -o qrlib.js 2>/dev/null
# Check if got it
if [ ! -s qrlib.js ]; then
  # fallback: use npm
  cd /tmp && npm pack qrcode-generator@1.4.4 2>/dev/null && tar xf qrcode-generator-1.4.4.tgz 2>/dev/null && cp package/qrcode.js /home/msdn/qrcraft/qrlib.js 2>/dev/null
fi
# jsQR for decoding
curl -sL "https://raw.githubusercontent.com/nicehorse06/jsQR/master/dist/jsQR.js" -o /home/msdn/qrcraft/jsqr.js 2>/dev/null
if [ ! -s /home/msdn/qrcraft/jsqr.js ]; then
  cd /tmp && npm pack jsqr@1.4.0 2>/dev/null && tar xf jsqr-1.4.0.tgz 2>/dev/null && cp package/dist/jsQR.js /home/msdn/qrcraft/jsqr.js 2>/dev/null
fi

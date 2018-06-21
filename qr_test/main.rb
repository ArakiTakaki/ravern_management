# -*- encoding: utf-8 -*-
require 'rqrcode'
require 'rqrcode_png'
require 'chunky_png'

# 「Hello Wolrd!!」いう文字列、サイズは3、誤り訂正レベルHのQRコードを生成する
qr = RQRCode::QRCode.new( "Hello World!!", :size => 3, :level => :h )
png = qr.to_img

#200×200にリサイズして「hello_world.png」というファイル名で保存する
png.resize(400, 400).save("hello_world.png")
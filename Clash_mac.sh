#!/usr/bin/env bash
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"

date=$(date +"%Y-%m-%d %H:%M")
file="Clash.yaml"

# 先刪除舊檔案以免寫入重複內容
rm -rf Clash.yaml

# 切換目錄
mkdir -p downloads && cd downloads

# 下載規則
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Domestic.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/LAN.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/WeChat/WeChat.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Baidu/Baidu.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/BaiDuTieBa/BaiDuTieBa.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Zhihu/Zhihu.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/115/115.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/ChengTongWangPan/ChengTongWangPan.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/iQIYI/iQIYI.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Youku/Youku.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/NetEaseMusic/NetEaseMusic.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Douyu/Douyu.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/CCTV/CCTV.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/BOC/BOC.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/CMB/CMB.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/CCB/CCB.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/CGB/CGB.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/CEB/CEB.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/BOCOM/BOCOM.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/ChinaTelecom/ChinaTelecom.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/ChinaUnicom/ChinaUnicom.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/ChinaMobile/ChinaMobile.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Game/GameDownloadCN/GameDownloadCN.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Proxy.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Speedtest.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/DMM.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/AI%20Suite.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Game/Game.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Reddit/Reddit.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/MOMOShop/MOMOShop.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/PChomeTW/PChomeTW.yaml
wget https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Shopee/Shopee.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Microsoft.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Apple.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/Apple%20Music.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/YouTube.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/YouTube%20Music.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/Disney%20Plus.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/Netflix.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/Bilibili.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/Bahamut.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/KKBOX.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/KKTV.yaml
wget https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Media/Line%20TV.yaml
wget https://raw.githubusercontent.com/raymao96/Rules/main/Clash_TW.yaml
wget https://raw.githubusercontent.com/raymao96/Rules/main/Clash_Final.yaml

# 去除註釋及空白行並加上分流名稱
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' Domestic.yaml > Domestic1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' LAN.yaml > LAN1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' WeChat.yaml > WeChat1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' Baidu.yaml > Baidu1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' BaiDuTieBa.yaml > BaiDuTieBa1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' Zhihu.yaml > Zhihu1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' 115.yaml > 1151.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' ChengTongWangPan.yaml > ChengTongWangPan1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' iQIYI.yaml > iQIYI1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' Youku.yaml > Youku1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' NetEaseMusic.yaml > NetEaseMusic1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' Douyu.yaml > Douyu1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' CCTV.yaml > CCTV1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' BOC.yaml > BOC1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' CMB.yaml > CMB1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' CCB.yaml > CCB1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' CGB.yaml > CGB1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' CEB.yaml > CEB1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' BOCOM.yaml > BOCOM.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' ChinaTelecom.yaml > ChinaTelecom1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' ChinaUnicom.yaml > ChinaUnicom1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' ChinaMobile.yaml > ChinaMobile1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' GameDownloadCN.yaml > GameDownloadCN1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Proxy.yaml > Proxy1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Speedtest.yaml > Speedtest1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' DMM.yaml > DMM1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' AI\ Suite.yaml > AI_Suite.yaml

sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Game.yaml > Game1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Reddit.yaml > Reddit1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' MOMOShop.yaml > MOMOShop1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' PChomeTW.yaml > PChome.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Shopee.yaml > Shopee1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Bahamut.yaml > Bahamut1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' KKBOX.yaml > KKBOX1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' KKTV.yaml > KKTV1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Line\ TV.yaml > LineTV.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,Ⓜ️ Microsoft/g' Microsoft.yaml > Microsoft1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🍎 Apple/g' Apple.yaml > Apple1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🍎 Apple/g' Apple\ Music.yaml > Apple_Music.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🎬 YouTube/g' YouTube.yaml > YouTube1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🎬 YouTube/g' YouTube\ Music.yaml > YouTube_Music.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🎬 Disney/g' Disney\ Plus.yaml > Disney.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🎬 Netflix/g' Netflix.yaml > Netflix1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🎬 BiliBili/g' Bilibili.yaml > Bilibili1.yaml

# 重新加上註釋（在 MacOS 上執行）
sed -i '' -e '1i \
  # Direct' Domestic1.yaml
sed -i '' -e '1i \
  # Proxy' Proxy1.yaml
sed -i '' -e '1i \
  ' AI_Suite.yaml
sed -i '' -e '1i \
  # Microsoft' Microsoft1.yaml
sed -i '' -e '1i \
  # Apple' Apple1.yaml
sed -i '' -e '1i \
  # YouTube' YouTube1.yaml
sed -i '' -e '1i \
  # Disney' Disney.yaml
sed -i '' -e '1i \
  # Netflix' Netflix1.yaml
sed -i '' -e '1i \
  # Bilibili' Bilibili1.yaml
sed -i '' -e '1i \
  # TW' Bahamut1.yaml
sed -i '' -e '1i \
  ' KKBOX1.yaml

# 重新加上空行
sed -e "/#/{x;p;x;G;}" Domestic1.yaml > Domestic2.yaml
sed -e "/#/{x;p;x;G;}" Proxy1.yaml > Proxy2.yaml
sed -e "/#/{x;p;x;G;}" Microsoft1.yaml > Microsoft2.yaml
sed -e "/#/{x;p;x;G;}" Apple1.yaml > Apple2.yaml
sed -e "/#/{x;p;x;G;}" YouTube1.yaml > YouTube2.yaml
sed -e "/#/{x;p;p;x;G;}" Disney.yaml > Disney2.yaml
sed -e "/#/{x;p;p;x;G;}" Netflix1.yaml > Netflix2.yaml
sed -e "/#/{x;p;p;x;G;}" Bilibili1.yaml > Bilibili2.yaml
sed -e "/#/{x;p;x;G;}" Bahamut1.yaml > Bahamut2.yaml
sed -e "/#/{x;p;x;}" Clash_TW.yaml > TW.yaml
sed -e "/#/{x;p;x;}" Clash_Final.yaml > Final.yaml

# 加上日期
cd ..
echo "# 更新日期： $date" > $file

# 合併為單一檔案
cat head.yml >> Clash.yaml
cat downloads/TW.yaml >> Clash.yaml
cat downloads/Domestic2.yaml >> Clash.yaml
cat downloads/LAN1.yaml >> Clash.yaml
cat downloads/WeChat1.yaml >> Clash.yaml
cat downloads/Baidu1.yaml >> Clash.yaml
cat downloads/BaiDuTieBa1.yaml >> Clash.yaml
cat downloads/1151.yaml >> Clash.yaml
cat downloads/ChengTongWangPan1.yaml >> Clash.yaml
cat downloads/iQIYI1.yaml >> Clash.yaml
cat downloads/Youku1.yaml >> Clash.yaml
cat downloads/NetEaseMusic1.yaml >> Clash.yaml
cat downloads/Douyu1.yaml >> Clash.yaml
cat downloads/CCTV1.yaml >> Clash.yaml
cat downloads/BOC1.yaml >> Clash.yaml
cat downloads/CMB1.yaml >> Clash.yaml
cat downloads/CCB1.yaml >> Clash.yaml
cat downloads/CGB1.yaml >> Clash.yaml
cat downloads/CEB1.yaml >> Clash.yaml
cat downloads/BOCOM.yaml >> Clash.yaml
cat downloads/ChinaTelecom1.yaml >> Clash.yaml
cat downloads/ChinaUnicom1.yaml >> Clash.yaml
cat downloads/ChinaMobile1.yaml >> Clash.yaml
cat downloads/GameDownloadCN1.yaml >> Clash.yaml
cat downloads/Proxy2.yaml >> Clash.yaml
cat downloads/Speedtest1.yaml >> Clash.yaml
cat downloads/DMM1.yaml >> Clash.yaml
cat downloads/AI_Suite.yaml >> Clash.yaml
cat downloads/Game1.yaml >> Clash.yaml
cat downloads/Reddit1.yaml >> Clash.yaml
cat downloads/MOMOShop1.yaml >> Clash.yaml
cat downloads/PChome.yaml >> Clash.yaml
cat downloads/Shopee1.yaml >> Clash.yaml
cat downloads/Microsoft2.yaml >> Clash.yaml
cat downloads/Apple2.yaml >> Clash.yaml
cat downloads/Apple_Music.yaml >> Clash.yaml
cat downloads/YouTube2.yaml >> Clash.yaml
cat downloads/YouTube_Music.yaml >> Clash.yaml
cat downloads/Disney2.yaml >> Clash.yaml
cat downloads/Netflix2.yaml >> Clash.yaml
cat downloads/Bilibili2.yaml >> Clash.yaml
cat downloads/Bahamut2.yaml >> Clash.yaml
cat downloads/KKBOX1.yaml >> Clash.yaml
cat downloads/KKTV1.yaml >> Clash.yaml
cat downloads/LineTV.yaml >> Clash.yaml
cat downloads/Final.yaml >> Clash.yaml

# 清理多餘檔案
rm -rf downloads/

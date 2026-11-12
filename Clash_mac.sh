#!/usr/bin/env bash
set -e
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"
cd "$(dirname "$0")"

date=$(date +"%Y-%m-%d %H:%M")
file="downloads/Clash.yaml"

# 清除前次執行留下的暫存檔案
rm -rf downloads/

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
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' BOCOM.yaml > BOCOM1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' ChinaTelecom.yaml > ChinaTelecom1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' ChinaUnicom.yaml > ChinaUnicom1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' ChinaMobile.yaml > ChinaMobile1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,DIRECT/g' GameDownloadCN.yaml > GameDownloadCN1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Proxy.yaml > Proxy1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Speedtest.yaml > Speedtest1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' DMM.yaml > DMM1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Game.yaml > Game1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Reddit.yaml > Reddit1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' MOMOShop.yaml > MOMOShop1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' PChomeTW.yaml > PChome.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Shopee.yaml > Shopee1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Bahamut.yaml > Bahamut1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' KKBOX.yaml > KKBOX1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' KKTV.yaml > KKTV1.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🔰 境外流量/g' Line\ TV.yaml > LineTV.yaml
sed -e '/payload/d' -e '/no-resolve/d' -e '/PROCESS-NAME/d' -e '/^[ ]*$/d' -e '/#/d' -e '/IP-ASN/d' -e 's/$/,🤖 AI/g' AI\ Suite.yaml > AI_Suite.yaml
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
  # AI' AI_Suite.yaml
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
sed -e "/#/{x;p;x;}" Clash_TW.yaml > TW.yaml
sed -e "/#/{x;p;x;}" Clash_Final.yaml > Final.yaml

# 加上日期
cd ..
echo "# 更新日期： $date" > "$file"

# 合併為單一檔案
cat head.yml >> "$file"
echo >> "$file"
cat downloads/TW.yaml >> "$file"
echo >> "$file"
cat downloads/Domestic1.yaml >> "$file"
echo >> "$file"
cat downloads/LAN1.yaml >> "$file"
echo >> "$file"
cat downloads/WeChat1.yaml >> "$file"
echo >> "$file"
cat downloads/Baidu1.yaml >> "$file"
echo >> "$file"
cat downloads/BaiDuTieBa1.yaml >> "$file"
echo >> "$file"
cat downloads/1151.yaml >> "$file"
echo >> "$file"
cat downloads/ChengTongWangPan1.yaml >> "$file"
echo >> "$file"
cat downloads/iQIYI1.yaml >> "$file"
echo >> "$file"
cat downloads/Youku1.yaml >> "$file"
echo >> "$file"
cat downloads/NetEaseMusic1.yaml >> "$file"
echo >> "$file"
cat downloads/Douyu1.yaml >> "$file"
echo >> "$file"
cat downloads/CCTV1.yaml >> "$file"
echo >> "$file"
cat downloads/BOC1.yaml >> "$file"
echo >> "$file"
cat downloads/CMB1.yaml >> "$file"
echo >> "$file"
cat downloads/CCB1.yaml >> "$file"
echo >> "$file"
cat downloads/CGB1.yaml >> "$file"
echo >> "$file"
cat downloads/CEB1.yaml >> "$file"
echo >> "$file"
cat downloads/BOCOM1.yaml >> "$file"
echo >> "$file"
cat downloads/ChinaTelecom1.yaml >> "$file"
echo >> "$file"
cat downloads/ChinaUnicom1.yaml >> "$file"
echo >> "$file"
cat downloads/ChinaMobile1.yaml >> "$file"
echo >> "$file"
cat downloads/GameDownloadCN1.yaml >> "$file"
echo >> "$file"
cat downloads/AI_Suite.yaml >> "$file"
echo >> "$file"
cat downloads/Proxy1.yaml >> "$file"
echo >> "$file"
cat downloads/Speedtest1.yaml >> "$file"
echo >> "$file"
cat downloads/DMM1.yaml >> "$file"
echo >> "$file"
cat downloads/Game1.yaml >> "$file"
echo >> "$file"
cat downloads/Reddit1.yaml >> "$file"
echo >> "$file"
cat downloads/MOMOShop1.yaml >> "$file"
echo >> "$file"
cat downloads/PChome.yaml >> "$file"
echo >> "$file"
cat downloads/Shopee1.yaml >> "$file"
echo >> "$file"
cat downloads/Microsoft1.yaml >> "$file"
echo >> "$file"
cat downloads/Apple1.yaml >> "$file"
echo >> "$file"
cat downloads/Apple_Music.yaml >> "$file"
echo >> "$file"
cat downloads/YouTube1.yaml >> "$file"
echo >> "$file"
cat downloads/YouTube_Music.yaml >> "$file"
echo >> "$file"
cat downloads/Disney.yaml >> "$file"
echo >> "$file"
cat downloads/Netflix1.yaml >> "$file"
echo >> "$file"
cat downloads/Bilibili1.yaml >> "$file"
echo >> "$file"
cat downloads/Bahamut1.yaml >> "$file"
echo >> "$file"
cat downloads/KKBOX1.yaml >> "$file"
echo >> "$file"
cat downloads/KKTV1.yaml >> "$file"
echo >> "$file"
cat downloads/LineTV.yaml >> "$file"
echo >> "$file"
cat downloads/Final.yaml >> "$file"

# 檢查規則是否因缺少換行而合併到同一行
if ! awk '
  /^rules:[[:space:]]*(#.*)?$/ { in_rules = 1; next }
  in_rules && /^[^[:space:]#]/ { in_rules = 0 }
  in_rules && /^[[:space:]]*-[[:space:]]*[A-Z][A-Z0-9-]*,/ {
    rule = $0
    sub(/^[[:space:]]*-[[:space:]]*[A-Z][A-Z0-9-]*,/, "", rule)
    if (rule ~ /-[[:space:]]*[A-Z][A-Z0-9-]*,/) {
      printf "規則可能連在同一行（第 %d 行）：%s\n", NR, $0 > "/dev/stderr"
      invalid = 1
    }
  }
  END { exit invalid }
' "$file"; then
  echo "規則檢查失敗，保留原有 Clash.yaml。" >&2
  exit 1
fi

mv "$file" Clash.yaml

# 清理多餘檔案
rm -rf downloads/

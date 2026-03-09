# Weather Dashboard

지역별 현재 날씨와 시간대별, 주간 예보를 한 화면에서 보는 대시보드입니다.

생성 파일:

- `weather_report.html`: 로컬 확인용 HTML
- `index.html`: GitHub Pages 배포용 HTML

실행 방법:

```powershell
cd C:\Users\intot\documents\my-works\climate-vot
python weather_bot.py
```

주요 기능:

- 현재 날씨, 체감온도, 강수확률, 풍속, 대기질 표시
- 시간대별 예보와 주간 예보 표시
- 오늘의 한줄 브리핑, 옷차림 안내, 빨래 말리기 팁 제공
- 트레킹 가능일과 주간 브리핑 강조
- `index.html`을 이용한 GitHub Pages 배포

업데이트 후 배포:

```powershell
python weather_bot.py
git add weather_bot.py index.html weather_report.html README.md .gitignore
git commit -m "Update dashboard"
git push
```

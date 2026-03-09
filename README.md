# Jaemin Weather Dashboard

태백시 기본 조회 + 지역 검색 + 트레킹 코스 별칭 검색을 지원하는 날씨 대시보드입니다.

## 실행 방법

```powershell
cd C:\Users\intot\documents\my-works\climate-vot
python weather_bot.py
```

실행 후 아래 파일이 생성됩니다.

- `weather_report.html` (로컬 확인용)
- `index.html` (GitHub Pages 배포용)

## 주요 기능

- 현재 날씨 + 시간별/주간 예보
- 트레킹/러닝 적합도 표시
- 일출/일몰 시간 표시
- 의인화 캐릭터/애니메이션 UI
- 지역명 또는 코스명 검색
  - 예: `태백시`, `해파랑27번길`, `북한산 둘레길`

## GitHub Pages 배포

1. GitHub에서 Public 저장소 생성
2. 로컬에서 아래 실행

```powershell
git init
git add weather_bot.py index.html weather_report.html README.md .gitignore
git commit -m "Initial dashboard"
git branch -M main
git remote add origin https://github.com/<YOUR_ID>/<YOUR_REPO>.git
git push -u origin main
```

3. 저장소 `Settings > Pages`
   - `Deploy from a branch`
   - `main` / `(root)`

배포 URL:

`https://<YOUR_ID>.github.io/<YOUR_REPO>/`

## 업데이트 배포

```powershell
python weather_bot.py
git add weather_bot.py index.html weather_report.html README.md
git commit -m "update dashboard"
git push
```


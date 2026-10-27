# STAT 8561 — 2026 Fall 課程安排

更新：2026-10-27。每堂課 75 分鐘、週一／週三授課。Chapter 4 已於第 17 堂（10/21）完成；Chapter 5 從第 18 堂開始。以下為備課安排，預定日期不代表已完成授課。網站 Chapter 6–7 的 Lecture 維持 TBA；以下課次仍為備課草案。

## 教學主線

**模型比較 → 係數與交互作用 → outlier／leverage／influence → 函數形式與變數選擇 → 實驗設計與更廣泛的模型檢查 → 預測評估與 GLM。** 已有的 matrix、OLS、multivariate normal、quadratic forms 與 exact t/F 基礎按問題引用，不重新推導。

Chapter 6 專講 **Outliers, Leverage, and Influence**：先用同一組資料的圖與估計值建立直覺，再分別介紹 leverage、scaled residuals、Cook's distance，以及調查與 sensitivity analysis。Chapter 7 為 **Transformations and Variable Selection**，承接 functional form、反轉換、forward／backward／stepwise、ridge／lasso 與 validation。原未發布的 `07.qmd` 實驗設計內容保存在 `draft-experimental-design.qmd`，暫不指定新的章號；原 contrasts 仍為 `App_I-contrasts.qmd` 選讀。

| 課件 | 課堂核心 | 選讀或補充 |
|---|---|---|
| Ch. 1–4 | 已有理論、nested models、partial F | 重複證明按需要回看 |
| Ch. 5 | Adjusted interpretation、factor coding、interaction、模型形狀的限制 | 較長 coding checks |
| Ch. 6 | Outlier、high leverage、influence 的區別；估計值比較；Cook's distance；調查與敏感度報告 | 不把 diagnostic cutoff 當成自動刪除規則 |
| Ch. 7 | 參數線性與曲線的區別；轉換與反轉換；variable selection、ridge／lasso、CV 與 held-out prediction | Box-Cox、elastic net；不推導優化演算法 |
| 實驗設計草稿（未編號） | Experimental unit、randomization、replication、blocking；保留設計所需 terms | 完整 factorial ANOVA／ANCOVA 與更多 contrasts |
| Ch. 8 | Residual patterns、Q-Q、leverage、Cook's distance；修正後重檢 | 額外診斷模擬 |
| Ch. 9 | 必要時作異質變異的延伸 | Transformation 由 Ch. 7 主講；WLS 推導與例子選讀 |
| Ch. 10 | Project 的完整評估與解讀；grouped／time-aware splits | 不重複 Ch. 7 的 CV 定義 |
| Ch. 11 | 一堂 logistic regression：binary mean、logit、odds ratio、prediction | Poisson、offset、likelihood／IRLS |
| Ch. 12 | 不另開重複的 ridge／lasso 導論 | 高維 laboratory；基本 penalty 與 tuning 見 Ch. 7 |

## 後續課次（暫定）

以下保留既有暫定日期與主題配置，僅更新章節引用。獨立的 Ch. 6 診斷單元課時待依實際進度安排；此處不更改考試或繳交日期。

| 課次 | 日期 | 內容 | 預期成果 |
|---|---|---|---|
| 18 | Mon 10/26 | Ch. 5：adjustment、factor coding、additive model | 從問題寫出 mean function 與 design columns |
| 19 | Wed 10/28 | Ch. 5：interaction、centering、模型比較 | 解釋 conditional difference，辨認 straight-line restriction |
| 20 | Mon 11/2 | Ch. 7.1–7.2：transformation 與 tree-volume 案例 | 分辨 linear in parameters；完成 diagnose → transform → refit → recheck；解釋 mean／median |
| 21 | Wed 11/4 | Ch. 7.3：forward／backward／stepwise；簡介 shrinkage | 設定候選集、AIC/BIC、停止規則與 hierarchy；辨認 selection 與 inference 的差別 |
| 22 | Mon 11/9 | Exam 2 review（暫定） | 依實際已教內容整合模型、比較與推論 |
| 23 | Wed 11/11 | **Exam 2** | 範圍依授課進度事先公告；不因整章發布就自動納入所有內容 |
| 24 | Mon 11/16 | 未編號的實驗設計核心；接 Ch. 8 diagnostics | Experimental unit、randomization／replication、blocking；保留必要 terms，開始 residual checks |
| 25 | Wed 11/18 | Ch. 8 應用；Ch. 10 project workflow | Q-Q、leverage／influence、修正與重檢；訓練／測試的分工 |
| — | Mon 11/23 / Wed 11/25 | **Thanksgiving break — no class** | 無額外 lecture |
| 26 | Mon 11/30 | **Logistic regression** | 區分 transforming Y 與 linking E(Y|x)；解釋 odds ratio 和機率預測 |
| 27 | Wed 12/2 | **Ch. 7.4–7.5：ridge／lasso 與完整評估** | 讀 path／CV curve、選 lambda、評估固定方法；Ch. 12 僅作加深練習 |
| 28 | Mon 12/7 | Project 整合、討論與緩衝 | 檢查模型敘述、diagnostics、leakage、可重現性與比較公平性 |
| — | Sun 12/13 | **Final Project due** | 沿用現有 project instructions 與評分 |

11/16 至少保留約半堂給 experimental design，不因新增 selection 而略過 course description 的設計內容。若進度不足，先減少逐行程式解說、Box-Cox 計算與高維 laboratory，保留 diagnostics、logistic 與核心 validation。11/30 的 GLM 課說明：`log(Y)` 的 Gaussian regression 與 `log(E(Y|x))` 的 link 是不同模型。

日期沿用已確認課表；日曆依據：[GSU Thanksgiving break](https://calendar.gsu.edu/event/thanksgiving-break-full-semester-mmii)、[GSU classes end](https://calendar.gsu.edu/event/classes-end-full-semester-3855)。Exam 1 為 10/14、Exam 2 為 11/11；不另加考試課次。

## 閱讀銜接與排版

- Ch. 5 的 mean model → Ch. 6 的個別觀測值敏感度 → Ch. 7 的 functional form 與 variable selection。
- Ch. 6 保留同一組六筆 baseline observations 與 A／B／C 三個新增點，先圖與估計值，再介紹數值診斷。
- Ch. 7 的 tree-volume 與 sensor 例子各自建立資料與模型；轉換後引用 Ch. 6 的診斷，而非重新定義三個概念。
- 原 contrasts、ToothGrowth dose-specific CI 與 multiplicity 仍在 `App_I-contrasts.qmd`；未編號的實驗設計草稿另行保留。
- Ch. 8／9／10 草稿引用 Ch. 6 的觀測值診斷與 Ch. 7 的 transformation／selection；Ch. 12 保留較進階的高維練習。

使用 Definition、Example、Exercise／折疊 Solution 與 callout；小段落用粗體，避免過多 subsection。Summary 獨立成 section，置於 Practice Problems 之前。長程式折疊、表格僅顯示必要結果；圖提供座標單位、資料來源和可支持的解讀。

## 評量與發布

沿用 Final Project：continuous response 的 multiple linear regression 加另一個合適的 regression 方法，使用同一 test set。Ridge／lasso 是可用選項，不強迫所有 project 採用。Logistic 以課內 binary-response 範例練習，不改動 project response、評分或繳交要求。

所有隨機例子使用 seed 8561。Learned transformations、preprocessing、variable selection 和 tuning 都留在 training data／training folds；final test set 不參與方法選擇。Prediction validation 不等於 post-selection inference 有效。

學生網站與合併 PDF 同步發布 Ch. 1–7 和列出的 optional readings；Ch. 6–7 Lecture 為 TBA。其餘教師草稿仍保留在 repository，依實際進度逐章發布。原 `06.qmd` 移至 `App_I-contrasts.qmd`，不刪除原 contrasts 教材。

# STAT 8561 — 2026 Fall 課程安排

更新：2026-10-26。每堂課 75 分鐘、週一／週三授課。Chapter 4 已於第 17 堂（10/21）完成；Chapter 5 從第 18 堂開始。以下為備課安排，預定日期不代表已完成授課。網站 Chapter 6 的 Lecture 維持 TBA。

## 教學主線

**模型比較 → 係數與交互作用 → 函數形式與變數選擇 → 實驗設計與診斷 → 預測評估與 GLM。** 已有的 matrix、OLS、multivariate normal、quadratic forms 與 exact t/F 基礎按問題引用，不重新推導。

Chapter 6 改為 **Transformations and Variable Selection**。先回答如何表示曲線，再回答哪些 terms 要保留；forward／backward／stepwise、ridge／lasso 和 validation 放在同一條主線。章節內容可分次授課，不把 transformation、selection 和 penalty tuning 全塞進一堂。原 Chapter 6 的 contrasts 保存為 `App_I-contrasts.qmd` 選讀；實驗設計課仍須交代研究比較、experimental unit、randomization 與 replication，不能用自動選模取代設計。

| 課件 | 課堂核心 | 選讀或補充 |
|---|---|---|
| Ch. 1–4 | 已有理論、nested models、partial F | 重複證明按需要回看 |
| Ch. 5 | Adjusted interpretation、factor coding、interaction、模型形狀的限制 | 較長 coding checks |
| Ch. 6 | 參數線性與曲線的區別；轉換程序與反轉換；forward／backward／stepwise；ridge／lasso；CV 與 held-out prediction | Box-Cox 概念、elastic net 概覽；不推導優化演算法 |
| Ch. 7 | Experimental unit、randomization、replication、blocking；保留設計所需 terms | 完整 factorial ANOVA／ANCOVA 與更多 contrasts |
| Ch. 8 | Residual patterns、Q-Q、leverage、Cook's distance；修正後重檢 | 額外診斷模擬 |
| Ch. 9 | 必要時作異質變異的延伸 | Transformation 已由 Ch. 6 主講；WLS 推導與例子選讀 |
| Ch. 10 | Project 的完整評估與解讀；grouped／time-aware splits | 不重複 Ch. 6 的 CV 定義 |
| Ch. 11 | 一堂 logistic regression：binary mean、logit、odds ratio、prediction | Poisson、offset、likelihood／IRLS |
| Ch. 12 | 不另開重複的 ridge／lasso 導論 | 高維 laboratory；已於 Ch. 6 學過基本 penalty 與 tuning |

## 後續課次（暫定）

| 課次 | 日期 | 內容 | 預期成果 |
|---|---|---|---|
| 18 | Mon 10/26 | Ch. 5：adjustment、factor coding、additive model | 從問題寫出 mean function 與 design columns |
| 19 | Wed 10/28 | Ch. 5：interaction、centering、模型比較 | 解釋 conditional difference，辨認 straight-line restriction |
| 20 | Mon 11/2 | Ch. 6.1–6.2：transformation 與 tree-volume 案例 | 分辨 linear in parameters；完成 diagnose → transform → refit → recheck；解釋 mean／median |
| 21 | Wed 11/4 | Ch. 6.3：forward／backward／stepwise；簡介 shrinkage | 設定候選集、AIC/BIC、停止規則與 hierarchy；辨認 selection 與 inference 的差別 |
| 22 | Mon 11/9 | Exam 2 review（暫定） | 依實際已教內容整合模型、比較與推論 |
| 23 | Wed 11/11 | **Exam 2** | 範圍依授課進度事先公告；不因整章發布就自動納入所有內容 |
| 24 | Mon 11/16 | Ch. 7 設計核心；接 Ch. 8 diagnostics | Experimental unit、randomization／replication、blocking；保留必要 terms，開始 residual checks |
| 25 | Wed 11/18 | Ch. 8 應用；Ch. 10 project workflow | Q-Q、leverage／influence、修正與重檢；訓練／測試的分工 |
| — | Mon 11/23 / Wed 11/25 | **Thanksgiving break — no class** | 無額外 lecture |
| 26 | Mon 11/30 | **Logistic regression** | 區分 transforming Y 與 linking E(Y|x)；解釋 odds ratio 和機率預測 |
| 27 | Wed 12/2 | **Ch. 6.4–6.5：ridge／lasso 與完整評估** | 讀 path／CV curve、選 lambda、評估固定方法；Ch. 12 僅作加深練習 |
| 28 | Mon 12/7 | Project 整合、討論與緩衝 | 檢查模型敘述、diagnostics、leakage、可重現性與比較公平性 |
| — | Sun 12/13 | **Final Project due** | 沿用現有 project instructions 與評分 |

11/16 至少保留約半堂給 experimental design，不因新增 selection 而略過 course description 的設計內容。若進度不足，先減少逐行程式解說、Box-Cox 計算與高維 laboratory，保留 diagnostics、logistic 與核心 validation。11/30 的 GLM 課說明：`log(Y)` 的 Gaussian regression 與 `log(E(Y|x))` 的 link 是不同模型。

日期沿用已確認課表；日曆依據：[GSU Thanksgiving break](https://calendar.gsu.edu/event/thanksgiving-break-full-semester-mmii)、[GSU classes end](https://calendar.gsu.edu/event/classes-end-full-semester-3855)。Exam 1 為 10/14、Exam 2 為 11/11；不另加考試課次。

## 閱讀銜接與排版

- Ch. 5 結尾的曲線問題 → Ch. 6 的 functional form。Tree-volume 例子沿用熟悉資料；選模另用八個 sensors 的模擬，明確標示是模擬而非真實資料。
- 原 contrasts、ToothGrowth dose-specific CI 與 multiplicity → Optional topic 的 `App_I-contrasts.qmd`。Ch. 7 若需比較權重可選用，不重講 Chapter 3 的一般線性組合推論。
- Ch. 6 → Ch. 7：能搜尋的 predictive terms 與設計／研究問題必須保留的 terms 不同。
- Ch. 8／9／10：引用 Ch. 6 的 transformation 與 tuning 程序，集中講更完整的診斷與 project 決策。
- Ch. 12 保留高維額外練習；Appendix C 保留額外準則與例子，兩者均不再是核心方法的第一次介紹。

使用 Definition、Example、Exercise／折疊 Solution 與 callout；小段落用粗體，避免過多 subsection。Summary 獨立成 section，置於 Practice Problems 之前。長程式折疊、表格僅顯示必要結果；圖提供座標單位、資料來源和可支持的解讀。

## 評量與發布

沿用 Final Project：continuous response 的 multiple linear regression 加另一個合適的 regression 方法，使用同一 test set。Ridge／lasso 是可用選項，不強迫所有 project 採用。Logistic 以課內 binary-response 範例練習，不改動 project response、評分或繳交要求。

所有隨機例子使用 seed 8561。Learned transformations、preprocessing、variable selection 和 tuning 都留在 training data／training folds；final test set 不參與方法選擇。Prediction validation 不等於 post-selection inference 有效。

學生網站與合併 PDF 同步發布 Ch. 1–6 和列出的 optional readings；Ch. 6 Lecture 為 TBA。其餘教師草稿仍保留在 repository，依實際進度逐章發布。原 `06.qmd` 移至 `App_I-contrasts.qmd`，不刪除原 contrasts 教材。

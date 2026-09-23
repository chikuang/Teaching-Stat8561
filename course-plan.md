# STAT 8561 — 2026 Fall 課程安排（加入 GLM 的修訂版）

更新：2026-09-22。已講完 Chapter 3.5。以下是教師規劃稿；首頁的 lecture coverage 仍待實際授課後更新。

## 主線與課程描述

課程描述包含 statistical inference、multivariate normal distribution、quadratic forms、linear models、regression models、experimental design models。建議以「問題 → design matrix → estimation → uncertainty → comparison → diagnostics → extension」串起全課。

GLM 適合放在最後，作為 regression models 的入門延伸。它延用相同的 design matrix、categorical coding、interaction 與科學比較，但改變 response family 和 mean link。保留 Gaussian linear model 的 multivariate normal / quadratic-form 基礎；不要為了增加 GLM 刪掉支撐 exact t/F inference 的核心理論。

| 章節 | 核心學習目標 | 與主線的關係 |
|---|---|---|
| 1 Matrix Representation and Notation | 向量、矩陣、expectation、covariance、design matrix | 共同語言 |
| 2 Least Squares Estimation | projection、normal equations、rank、OLS | estimation |
| 3 Distribution Theory of OLS and Inference | MVN、quadratic forms、independence、t/F、mean CI 和 prediction interval | 推論的理論基礎 |
| 4 Model Comparison, Partial F Tests, and ANOVA | sums of squares、nested models、partial vs sequential comparisons | 下一章；把 Chapter 3 的推論變成模型比較 |
| 5 Multiple Regression and Categorical Predictors | adjusted interpretation、factor coding、interactions | 科學問題如何進入 X |
| 6 Contrasts and Estimable Comparisons | 把 mean comparison 寫成線性組合；coding invariance、multiplicity | 以研究問題決定推論目標 |
| 7 Experimental Design Models: ANOVA and ANCOVA | experimental unit、randomization、replication、blocking、factorial/ANCOVA | 設計決定有效比較與獨立性 |
| 8 Diagnostics and Model Adequacy | residual patterns、leverage、influence、assumption checks | 檢查分析可信度 |
| 9 Transformations and Weighted Least Squares | 改善 mean/variance model、log-scale interpretation、precision weights | 根據診斷修正模型 |
| 10 Model Assessment and Prediction | prespecified comparisons、validation、leakage、prediction loss | 穿插的短單元，不另佔一整週 |
| 11 Introduction to Generalized Linear Models | logistic、Poisson、offset、OR/rate ratio、probabilities、deviance、basic diagnostics | binary/count response 的實用延伸 |

這個範圍適合 Applied Statistics MS、其他有先修統計課程的碩士生，以及需要 linear-model foundations 的 PhD 生。共用要求是能解釋 assumptions、正確設定與解讀模型、用 R 完成可重現分析；PhD/進階學生可使用 optional appendices 延伸證明與計算。這是教學範圍判斷，不代表已核准更改正式 syllabus。

## 剩餘課次

假設每堂約 75 分鐘；目前未確認實際時長。若每堂較短，優先移出手算重複題和程式逐行操作，保留推論條件、解讀與一個完整案例。從 9/23 到 12/7 有 20 次可上課時段：18 次教學/複習 + 2 次課內考試。考試沿用首頁日期。Thanksgiving week 的 11/23、11/25 不上課。

| 日期 | 建議內容 | 課堂可交付的學習成果 |
|---|---|---|
| Wed 9/23 | Ch. 3.6–3.7：single coefficient、linear combinations | 正確寫出估計值、SE、t reference distribution、CI |
| Mon 9/28 | Ch. 3.8–3.10：general linear hypothesis、mean CI、prediction | 區分 mean uncertainty 和 future-observation variation |
| Wed 9/30 | Ch. 3.11–3.13：完整例子與 R；回顧 MVN/quadratic forms | 連結 projection rank、chi-square、independence 與 t/F；3.14 作練習 |
| Mon 10/5 | Ch. 4：ANOVA decomposition、overall F | 從 SSE/SST 解釋模型貢獻 |
| Wed 10/7 | Ch. 4：nested/partial F、sequential vs partial | 比較相同 observations 上的兩個 nested models |
| Mon 10/12 | Exam 1 review | 混合短題：矩陣、推論條件、模型比較 |
| Wed 10/14 | **Exam 1** | 建議範圍 Ch. 1–4，以實際進度為準 |
| Mon 10/19 | Ch. 5：multiple regression、categorical coding | 解釋 adjusted association 與 reference group |
| Wed 10/21 | Ch. 5：interaction；Ch. 6 導入 | 寫出 group-specific means/slopes，定義一個 contrast |
| Mon 10/26 | Ch. 6：contrasts、coding、multiplicity；Ch. 7 design | 分清 parameterization 與科學比較，辨認 experimental unit |
| Wed 10/28 | Ch. 7：one-way、blocking、factorial models | 依隨機化設計選擇 comparison 和 error structure |
| Mon 11/2 | Ch. 7：interaction、ANCOVA、adjusted comparisons | 用 nested models 檢查 slopes，解釋比較的條件 |
| Wed 11/4 | Ch. 8：residual diagnostics、leverage、influence | 診斷一個可能失效的 linear model |
| Mon 11/9 | Ch. 8–9：diagnosis to remedy、transformations | 區分 log-scale mean、original-scale median/mean |
| Wed 11/11 | Ch. 9：WLS；Ch. 10 validation 重點 | 說明 precision weights；辨認 training error 和 leakage |
| Mon 11/16 | Exam 2 review；短分析報告討論 | 從 design 到 model comparison、diagnostics 的完整分析 |
| Wed 11/18 | **Exam 2** | 建議 Ch. 5–10，沿用 Ch. 1–4 必要工具；不考尚未教的 GLM |
| Mon 11/23 / Wed 11/25 | **Thanksgiving break — no class** | 無額外 lecture |
| Mon 11/30 | Ch. 11：GLM components、logistic regression | 解釋 OR、預測 probability、Wald CI、separation warning |
| Wed 12/2 | Ch. 11：Poisson、exposure、likelihood/deviance、checks | 解釋 rate ratio/offset，區分 exact F 與 asymptotic LRT |
| Mon 12/7 | GLM 案例整合 + final review | 選 response family、解讀效果與不確定性、說明限制 |

Ch. 10 的完整 cross-validation code 建議作 guided lab / homework，11/11 只講評估原則，GLM 課再用 held-out probability evaluation 鞏固。11/30 和 12/2 各保留完整 GLM 課；12/7 是整合與複習，不再塞新的模型家族。Final assessment 的日期未確認，本表未另行推定。

日曆依據：[GSU admissions timeline（Thanksgiving 11/23–11/28）](https://admissions.gsu.edu/timeline/)；[GSU full-semester classes end（12/7）](https://calendar.gsu.edu/event/classes-end-full-semester-3855)。

## 核心與 optional 的邊界

- 核心理論：MVN linear transformations、quadratic forms、OLS/SSE independence、exact t/F。Gauss–Markov 的假設與意義可搭配 Appendix B 選讀。保留足夠推導讓學生知道方法何時成立。
- 核心實作：factor/interaction coding、contrasts、design、diagnostics、基本 WLS、validation；logistic/Poisson 的 interpretation、prediction、model comparison。
- Appendix A：matrix reference。
- Appendix B：Gauss–Markov theorem 與其證明；rank deficiency 的 row-space / generalized-inverse 延伸、DFFITS/DFBETAS、partial residual / added-variable plots。
- Appendix C：forward/backward/stepwise 與額外 selection criteria；主線保留 prespecified comparison、validation 與 selection bias 警覺。
- Appendix D：GLS、correlated errors、feasible WLS/GLS 與 whitening。GLS 和 GLM 明確分開。
- Appendix E：exponential-family likelihood、IRLS、asymptotic theory；不要求入門 GLM 兩堂課完整推導。
- Appendix F：Quantile Regression 自學材料；conditional quantiles、check loss、圖形、R 範例與 bootstrap 推論。
- Appendix G：Mixed-Effects Models 自學材料；群內相關、partial pooling、random intercept/slope、重複量測案例與推論限制。
- F/G 均為 Optional Self-Study，不增加既有課表的授課時數，也不改變主線與原定考試範圍。Zero-inflated models 等更進階延伸不承諾在本學期主線完整教授。

## 實作與評量建議

每個核心分析先交代 outcome、observational/experimental unit、target comparison，再交代 assumptions、estimate/interval 和 limitation。讓學生看到因果解釋來自設計與假設，並非 adjusted coefficient 自動代表 causal effect。

建議用一份 continuous-response 分析（design + ANOVA/ANCOVA + diagnostics）與一份 binary/count response 分析（family/link + probabilities/rates + validation）串起實用技能。程式需可重現；所有示例 seed 統一為 8561。GLM 在第二次課內考試之後，應放在 final assessment 或後續作業中評量。

## 檔案重整對照

第 1、2 章及第 3 章至 3.6（含）沿用原本排版；第 3.7 節起保留緊湊整理。前三章檔名與主要節次保留。原始未上線草稿依教學順序重整如下：04/05 保留；舊09的核心比較改寫為新06；舊10變新07；舊06變新08；舊07變新09；舊08的必要評估內容改寫為新10；舊11 GLS 移 Appendix D；新11為 GLM。舊09較深估計理論移 Appendix B，舊08的自動選模移 Appendix C。章節號不代表一章需上一整週。

HTML 的程式碼可折疊；真正的大節與 theorem/example/exercise 保留。小步驟採粗體，不再為每個公式或 R 操作新增 subsection。

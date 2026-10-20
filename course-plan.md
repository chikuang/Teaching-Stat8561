# STAT 8561 — 2026 Fall 課程安排

更新：2026-10-20。教師已確認每堂課 **75 分鐘**，目前第 16 堂的實際進度為 **Chapter 4.3**，Chapter 4 尚未講完，預計下一堂（10/21）完成。以下依此安排後續教學；預定日期不代表已完成授課。

## 教學主線與取捨

主線為「模型比較 → 係數與條件比較 → 設計與診斷 → 實際分析 → 模型延伸」。已有的 matrix、OLS、multivariate normal、quadratic forms 與 exact t/F 基礎，繼續用於後續案例。

後續以 Chapter 5、Chapter 6 的核心比較及 Chapter 8 的診斷為主。Chapter 7、9、10 選用必要段落，配合案例與 final project；既有完整課件保留供選讀，不要求逐章全部講完。期末明確預留 **一堂 logistic regression** 與 **一堂 ridge／lasso**，最後一堂留給 project 整合與緩衝。

| 課件 | 本學期課堂安排 | 保留的延伸閱讀 |
|---|---|---|
| Ch. 1–3 | 已有理論工具；後續按問題引用 | 較長的重複推導不再逐次重講 |
| Ch. 4 `04.qmd` | 10/21 完成 nested models、partial F 與 R 比較 | SSE 幾何與分布證明可作課後複習 |
| Ch. 5 `05.qmd` | 約兩堂：adjusted interpretation、factor coding、additive／interaction models | 完整程式輸出、額外 coding checks 作練習 |
| Ch. 6 `06.qmd` | 一堂核心，另用整合課鞏固：contrast、estimate／SE／CI、條件比較、比較 family | 完整 estimability 理論與更多多重比較方法 |
| Ch. 7 `07.qmd` | 整合課選講 experimental unit、randomization、replication；有餘裕示範 blocking | 完整 one-way／two-way ANOVA、ANCOVA 與額外 R 範例 |
| Ch. 8 `08.qmd` | 兩堂合併診斷與應用：residual patterns、Q-Q、leverage、Cook's distance、修正與重檢 | 更多診斷圖與數值推導作課後練習 |
| Ch. 9 `09.qmd` | 選讀 log transformation 與反轉換解讀，接入診斷案例 | 其他 power transformations、完整 WLS 推導與計算 |
| Ch. 10 `10.qmd` | project 工作流程：train/test、CV、leakage、RMSE／MAE，穿插在 11/11 與 12/7 | 完整 CV 程式、AIC 與更細的評估議題 |
| Ch. 11 `11.qmd` | **11/30，一堂 logistic regression**：binary mean、logit、odds ratio、predicted probability、一個完整例子 | Poisson、offset、deviance／LRT 與較深入的 GLM 理論 |
| Ch. 12 `12.qmd` | **12/2，一堂 regularization／high-dimensional regression 導論**：ridge、lasso、選擇 lambda、held-out prediction | 高維收斂率、selection consistency、post-selection／debiased inference |

章節號是教材索引，不等於上課堂數。Chapter 12 是新增的單堂教材；Chapter 10 保留作預測評估的先備內容。學生應能解釋 assumptions、比較目標與限制，並完成可重現分析；更深入的證明及計算使用原有附錄。

## 從目前進度出發的課表

依現有週一／週三課表，從 10/21 到 12/7 尚有 12 次見面，包含 1 次考試、1 次考前複習及 1 次期末整合。11/23、11/25 為 Thanksgiving break，不上課。Exam 2 沿用 11/18；Final Project 沿用 **12/13** 繳交。

| 課次 | 日期 | 內容 | 預期學習成果 |
|---|---|---|---|
| 17 | Wed 10/21 | 從 Ch. 4.3 接續並完成 Chapter 4；nested／partial F、R 示範與整理 | 在同一批 observations 上寫出限制、比較模型、判讀分子與分母 df |
| 18 | Mon 10/26 | Ch. 5：adjusted interpretation、factor coding、additive model | 解釋 reference group，將問題寫成 mean function 與 design matrix |
| 19 | Wed 10/28 | Ch. 5：interaction、centering、equal slopes／identical lines | 寫出 group-specific means／slopes，說清楚比較在哪個 predictor value 成立 |
| 20 | Mon 11/2 | Ch. 6 核心：contrasts、estimate／SE／CI；ToothGrowth 條件比較 | 從研究問題建立權重，用完整 covariance matrix 計算不確定性 |
| 21 | Wed 11/4 | Ch. 5–6 整合與補強；Ch. 7 設計核心 | 分辨單一與一組比較，辨認 experimental unit、randomization、replication；blocking 視進度示範 |
| 22 | Mon 11/9 | Ch. 8：residual patterns、Q-Q、leverage、influence | 區分 mean misspecification、unequal variance、outlier 與 influential observation |
| 23 | Wed 11/11 | Ch. 8 應用；選用 Ch. 9 log transformation、Ch. 10 project 評估 | 修正後重檢；區分反轉換的 mean／median；建立 train/test 與 training-only CV 工作流程 |
| 24 | Mon 11/16 | Exam 2 review；整合題與分析解讀 | 連結模型、比較、推論條件、診斷與限制 |
| 25 | Wed 11/18 | **Exam 2** | 依實際授課並事先公告的範圍；使用 Ch. 1–4 必要工具，不預設完整 Ch. 5–10 均已教完 |
| — | Mon 11/23 / Wed 11/25 | **Thanksgiving break — no class** | 無額外 lecture |
| 26 | Mon 11/30 | **Logistic regression：一堂** | 用 logit 連結 binary mean 與 linear predictor，區分 odds ratio 與 probability difference |
| 27 | Wed 12/2 | **Ridge／lasso：一堂** | 說明 shrinkage／sparsity、閱讀 coefficient path 與 CV curve、比較 held-out error |
| 28 | Mon 12/7 | Project 整合、問題討論與緩衝 | 檢查分析敘述、診斷、可重現性與公平預測比較；不另開新模型家族 |
| — | Sun 12/13 | **Final Project due** | 沿用現有 project instructions、評分與提交要求 |

11/4 保留作概念與練習的緩衝，避免把 Chapter 6 排成過於密集的公式課。若 Chapter 4 完成時間延後，先減少重複手算、逐行程式講解與 Chapter 7 的擴充例子，再調整後續練習；保護 11/30、12/2 的兩個延伸單元及必要診斷內容。12/7 優先處理 project 和未解決的核心問題。

日曆依據：[GSU Thanksgiving break（11/23–11/28）](https://calendar.gsu.edu/event/thanksgiving-break-full-semester-mmii)、[GSU full-semester classes end（12/7）](https://calendar.gsu.edu/event/classes-end-full-semester-3855)。Project 日期以 `Project-Instructions.qmd` 與 `Project-Report.qmd` 為準。

## 單堂延伸課的範圍

### 11/30：Logistic regression（75 分鐘）

| 時間 | 重點 |
|---|---|
| 15 分鐘 | Binary outcome、conditional probability；沿用 X，改變 response family 與 link |
| 20 分鐘 | Logit／inverse logit；odds ratio 不等於 risk ratio 或固定的 probability difference |
| 25 分鐘 | 一個 `glm(..., family = binomial())` 範例：係數、預測機率及圖形解讀 |
| 15 分鐘 | 檢查資料與 convergence／separation，概略說明近似推論及機率預測評估 |

Poisson／offset 保留在 `11.qmd` 的延伸閱讀；exponential-family likelihood、IRLS 與完整漸近推導仍在 Appendix E。這些不占用 ridge／lasso 的預留課次。

### 12/2：Regularization and high-dimensional regression（75 分鐘）

| 時間 | 重點 |
|---|---|
| 15 分鐘 | 近共線性與 predictors 過多：OLS 的不穩定、rank deficiency，以及 training fit 的限制 |
| 25 分鐘 | Ridge／lasso 的目標函數、shrinkage／sparsity；intercept 與 predictor scaling |
| 25 分鐘 | 用固定 training folds 比較 ridge／lasso，閱讀 coefficient path 和 CV curve，選 lambda 後評估 untouched test set |
| 10 分鐘 | Prediction、variable selection 與 coefficient inference 的差別；結果的限制 |

採用一個可重現的 Gaussian regression 例子，讓學生先掌握 loss 加 penalty 的概念。高維估計的收斂率、oracle properties、selection consistency 與 debiased lasso 留作進階選讀。Ridge／lasso 的課堂例子不要求每組 project 改用相同方法。

## 課件整合與閱讀路線

- `05.qmd` → `06.qmd`：沿用 ToothGrowth。Chapter 5 建立 mean model、coding 與 interaction；Chapter 6 用六個 cell means 估計各 dose 的 OJ−VC 差及其 CI。不要把已在 Chapter 5 發現不合適的兩條直線當成最終分析模型。
- `06.qmd` → `07.qmd`：把比較問題接到 experimental unit 與 randomization；one-way regression coding、interaction、ANCOVA 的重複介紹改為延伸閱讀。
- `08.qmd` → `09.qmd`／`10.qmd`：先辨認診斷問題，再選一個合理修正，最後評估新資料的預測。Log transformation 與 CV 使用短案例；完整 WLS、其他 transformations 及較長程式保留供選讀。
- `11.qmd`：以 logistic 為課堂主線，Poisson／offset 與詳細 GLM model comparison 分開標示為延伸閱讀。
- `12.qmd`：使用 Chapter 10 的 validation 工作流程，補齊 ridge／lasso；與 Chapter 11 分別是一堂可獨立完成的延伸課。

課堂顯示 estimate、SE／CI、圖形與解讀；長程式與額外軟體輸出可折疊。必要定義、例子與練習保留；附錄的證明使用正式 Proof environment。

每個主章（Ch. 1–12）的核心內容結束後安排簡短 **Summary / Recap**，置於 Appendix、supplementary／延伸閱讀或補充推導之前；沒有補充段落的章節則置於章末。摘要整理核心概念、必要公式與下一步，取代重複的長摘要。Application 盡量搭配一張先提出問題的圖，再接模型與推論。圖中交代資料來源或模擬設定、座標與單位、顏色／線型、區間意義；避免用一張圖堆放多個難以辨認的比較。

## 核心與選讀的邊界

- **課堂核心：** Chapter 4 收尾、Chapter 5、Chapter 6 的基本比較、設計的 experimental unit／randomization／replication、diagnostics、log-scale interpretation、基本 validation、單堂 logistic 與單堂 ridge／lasso。
- **選讀：** 完整 factorial ANOVA／ANCOVA、更多 multiplicity 方法、WLS 推導、Poisson／offset、GLM likelihood／IRLS、完整高維理論。
- Appendix A／H：矩陣與基本數理統計 reference。
- Appendix B：Gauss–Markov、estimability／generalized inverse、額外影響度與 partial-regression diagnostics。
- Appendix C：forward／backward／stepwise 與額外選模準則；課堂保留 selection changes inference 的觀念。
- Appendix D：GLS、correlated errors 與 feasible weighting；不與 GLM 混用。
- Appendix E：exponential family、IRLS、GLM 漸近理論。
- Appendix F／G：Quantile Regression／Mixed-Effects Models，維持 Optional Self-Study。

## 實作與評量

沿用現有 Final Project：continuous response 的 multiple linear regression 加上一個 machine learning regression 方法，使用同一 test set 比較。Ridge／lasso 課提供 regularization 與 tuning 的實作基礎；logistic 課以課內 binary-response 小例子練習，不改變既有 project 的 response、評分或提交要求。

每次分析先交代 outcome、observational／experimental unit、target comparison，再交代 assumptions、estimate／interval 和 limitation。所有可重現範例 seed 使用 **8561**。Learned preprocessing 和 tuning 留在 training data／training folds；保留 test set 到最後評估。

Exam 2 不因教材保留較多章節而自動擴大考試範圍，依實際授課內容事先公告。Logistic 與 ridge／lasso 安排在 Exam 2 之後，使用課內練習與期末整合鞏固。Final assessment 已確定為 **Final Project（12/13，20%）**，不再安排未確認的 final exam。

## 檔案沿革與發布

既有重整：舊09的核心比較為新06；舊10為新07；舊06為新08；舊07為新09；舊08的評估內容為新10；舊11 GLS 移 Appendix D；新11為 GLM。舊09較深估計理論在 Appendix B，舊08的自動選模在 Appendix C。

本次依實際進度調整課堂閱讀路線，新增 `12.qmd` 作 ridge／lasso 單堂教材，保留原有延伸內容。教師規劃、課件內容與學生已授課的 coverage 分別維護；未授課章節不標為已完成。

學生網站維持目前 Ch. 1–5 的發布範圍，後續課件依進度逐章發布。完整教師預覽包含 Ch. 1–12 與延伸附錄，供備課檢閱。

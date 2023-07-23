# flutter_state_management_collection

## 框架

- riverpod
- mobx
- provider
- bloc

## 考慮情境

- 讀取單個
- 讀取列表
- A (single/multi models) -> B (single/multi models)
    1. 進入 B 時
        1. 讀取失敗，A 不受影響
        2. 讀取成功，A 更新資料
        3. A 的資料作為 B 的初始值，不重新讀取? 
            <span></span>
            A 的資料作為 B 的初始值，但同時會再次讀取 B 的最新資料，如果取得的話，再次更新畫面 (減少等待時間?)
            如果正在再次讀取或失敗且該畫面是重要畫面 (但如果是重要畫面，本身就不該用 A 當作初始值，而是重新讀取最新)，若使用者執行重要行為時，跳出提醒?
            > 重要畫面: 轉帳-手續費、結帳 (有些網站會在購物車更新時跳出提醒商品變更，強制跳回 or 提醒更新商品內容 or 詢問是否留下?)
            <span></span>
            B 是否可以重整? 
            可以重整的話，是否需要更新前面資料?
    2. 在後續刪除/更新的話，是否要更新前面頁面? (A 和 B 資料隔離?)
        根據資料是否為敏感? (牽涉個資等原因) (例如有些網站按上一頁會顯示資料不存在、有些網站即便資料已不存在，但會根據 history state 回復資料)
    3. A -> B (執行更新)
        在更新未完成前 (請求尚未回傳)，是否該讓其回上一頁? ()


---

ViewModel (aka Controller ...)

用以控制頁面狀態

- 討論 A ViewModel 與 B ViewModel 連動，假設 A ViewModel 為 Product、B ViewModel
- State 要有 event/action code，讓每個 action












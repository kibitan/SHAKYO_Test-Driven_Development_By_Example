## TODO
 * [x] $ 5 * 2 = $ 10
 * [x] #amount を private にする
   - Java では同一クラスであれば別インスタンスのインスタン変数にアクセスできるが、Ruby は不可なので一旦無視する
 * [x] Dollar の副作用をどうする？
 * [ ] Money の丸め処理をどうする？
 * [x] #equals
 * [ ] #hash_code
 * [ ] null との等価性比較
 * [ ] 他のオブジェクトとの等価性比較
 * [x] 5 CHF * 2 = 10 CHF
 * [x] Dollar と Franc の 重複
 * [x] equals の 一般化
 * [x] times の 一般化
 * [x] Dollar と Franc を比較する
 * [x] 通貨(Currency)の概念
 * [x] test_franc_multiplicationを削除する？

 * [x] $ 5 + 10 CHF = $ 10（ レート が 2: 1 の 場合）
 * [x] $ 5 + $ 5 = $ 10
 * [x] $ 5 + $ 5 が Money を返す -> 明白な実装が思いつかないので諦める
 * [x] Bank.reduce(Money)
 * [x] Money を変換して換算を行う
 * [x] Reduce(Bank, String)
 * [x] Sum.plus
 * [x] Expression.times

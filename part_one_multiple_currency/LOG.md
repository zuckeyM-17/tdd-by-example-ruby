## 第一章 仮実装

```shell script

$ bundle exec rspec part_one_multiple_currency/spec

money
  Dollar#times
    when Dallar Class initialized with Integer 5, and #times method is called with Integer 2 as first args
      changes amount attr to 10 (FAILED - 1)

Failures:

  1) money Dollar#times when Dallar Class initialized with Integer 5, and #times method is called with Integer 2 as first args changes amount attr to 10
     Failure/Error: five = Dollar.new(5)

     NameError:
       uninitialized constant Dollar
     # ./part_one_multiple_currency/spec/money_spec.rb:6:in `block (4 levels) in <top (required)>'

Finished in 0.00123 seconds (files took 0.11167 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./part_one_multiple_currency/spec/money_spec.rb:5 # money Dollar#times when Dallar Class initialized with Integer 5, and #times method is called with Integer 2 as first args changes amount attr to 10

```

テストがfailする。

* Dollar Class がない
* constructor がない（デフォルトは引数なし）
* #times method がない
* amount attribute がない

グリーンになる

```shell script
$ bundle exec rspec part_one_multiple_currency/spec

money
  Dollar#times
    when Dallar Class initialized with Integer 5, and #times method is called with Integer 2 as first args
      changes amount attr to 10

Finished in 0.0014 seconds (files took 0.0787 seconds to load)
1 example, 0 failures
```

テストコードとソースコード重複を削除する。
5, 2 という数字がテストコードとソースコードの両方に存在するので排除したい。
テストはグリーンのまま。

## 第2章 明白な実装

1. テストを書く
2. 動かす
3. 正しくする（重複の削除）

```shell script
$ bundle exec rspec part_one_multiple_currency/spec

money
  Dollar#times
    引数に 2 を取るとき
      金額が 2 倍された Dollar クラスのインスタンスを返却
    引数に 3 を取るとき
      金額が 3 倍された Dollar クラスのインスタンスを返却

Finished in 0.00155 seconds (files took 0.08061 seconds to load)
2 examples, 0 failures
```

Dollar の副作用をなくす。

連続して呼ばれたとき、期待した振る舞いをしない。
ということを確認するテストコードを書き、red にする。
=> あるべきインターフェースを考え実装する。

自信がある場合と自信がない場合で、`仮実装`と`明白な実装`の間を行き来する。
予期せぬエラーが出たら仮実装




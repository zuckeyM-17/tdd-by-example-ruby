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




SOURCE = 	1対象会社における価値源泉となる技術等の分析・特定.md \
			2対象技術等毎の、対象会社における利用可能性・利用可能範囲の調査.md \
			3対象会社における知的財産関連紛争の調査.md \
			4第三者の権利を侵害するリスクの調査（FTO調査）.md \
			5ガバナンス調査.md \
			6価値評価.md

all : 0目次.md docs/index.html

0目次.md : $(SOURCE)
	pandoc -s --toc --toc-depth=2 --template=toc_template -o $@ $^

docs/index.html : $(SOURCE)
	pandoc -s --toc --toc-depth=2 -o $@ $^

clean :
	rm 0目次.md
	rm docs/index.html

.PHONY : all clean

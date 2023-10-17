# 解决 ctrl + 空格 无效问题

如果你用过微软拼音，你可能知道 Ctrl + 空格是切换中英文的快捷键。但是使用了小狼毫后再按 Ctrl + 空格会导致输入法被禁用。那么如何解决这个问题呢？

你可以将下面的代码保存成一个 reg 文件，将它导入到你的注册表里2，然后重启电脑。这样按 Ctrl + 空格就不会导致输入法被禁用啦。小玲实测 Windows 10 和 Windows 11 都可以使用这个方法。

```text
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Control Panel\Input Method\Hot Keys\00000010]
"Key Modifiers"=hex:00,c0,00,00
"Virtual Key"=hex:ff,00,00,00

[HKEY_CURRENT_USER\Control Panel\Input Method\Hot Keys\00000070]
"Key Modifiers"=hex:00,c0,00,00
"Virtual Key"=hex:ff,00,00,00
```

[来源](https://blog.bling.moe/post/2/)

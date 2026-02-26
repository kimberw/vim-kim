# vim_kim 配置

> 基于 amix/vimrc 定制的 Vim 配置，包含常用的开发插件

## 目录结构

```
~/.vim_kim/
├── autoload/
│   └── plug.vim          # vim-plug 插件管理器
├── my_plugins/           # 插件安装目录
├── temp_dirs/            # 临时文件目录 (undo 等)
├── vimrcs/
│   ├── basic.vim         # 基础配置
│   ├── extended.vim      # 扩展配置
│   ├── filetypes.vim     # 文件类型配置
│   └── plugins_config.vim
└── my_configs.vim        # 主配置文件
```

## 安装

### 运行安装脚本

```bash
sh ~/.vim_kim/install.sh
```

这会自动：
1. 创建 `~/.vimrc` 配置文件
2. 安装所有插件

---

## 插件列表

### 1. 文件浏览/搜索

| 插件 | 说明 |
|------|------|
| [nerdtree](https://github.com/scrooloose/nerdtree) | 文件树面板 |
| [fzf](https://github.com/junegunn/fzf) | 命令行模糊搜索工具 |
| [fzf.vim](https://github.com/junegunn/fzf.vim) | Vim 模糊搜索集成 |

### 2. 代码开发

| 插件 | 说明 |
|------|------|
| [tagbar](https://github.com/majutsushi/tagbar) | 代码结构/大纲面板 |
| [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags) | 自动生成 tags |
| [vim-surround](https://github.com/tpope/vim-surround) | 括号/引号环绕编辑 |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git 集成 |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) | Git 变更显示 |
| [nerdcommenter](https://github.com/scrooloose/nerdcommenter) | 快速注释/取消注释 |

### 3. 代码补全

| 插件 | 说明 |
|------|------|
| [coc.nvim](https://github.com/neoclide/coc.nvim) | LSP 智能补全 |
| [vim-autoformat](https://github.com/Chiel92/vim-autoformat) | 代码自动格式化 |

### 4. UI/体验

| 插件 | 说明 |
|------|------|
| [goyo.vim](https://github.com/junegunn/goyo.vim) | 专注模式 |
| [undotree](https://github.com/mbbill/undotree) | 撤销历史树 |
| [vim-easymotion](https://github.com/easymotion/vim-easymotion) | 快速跳转 |
| [vim-visual-multi](https://github.com/mg979/vim-visual-multi) | 多光标编辑 |

### 5. 主题

| 插件 | 说明 |
|------|------|
| [gruvbox](https://github.com/gruvbox-community/gruvbox) | Gruvbox 主题 |

---

## 快捷键汇总

### Leader 键

| Leader 键 | 说明 |
|-----------|------|
| `;` | 主 Leader 键 (在配置中定义) |
| `,` | 本地 Leader 键 |

### 通用快捷键

| 快捷键 | 功能 |
|--------|------|
| `<Leader>y` | 复制到系统剪贴板 |
| `<Leader>p` | 从系统剪贴板粘贴 |
| `<Leader>n` | 跳转到标签定义 |
| `<Leader>b` | 跳回上一个标签 |
| `<Leader>w` | 保存文件 |
| `<Leader>q` | 退出 |
| `<Leader>r` | 重新加载配置 |
| `<Leader>m` | 删除所有空行 |

### 插件快捷键

#### NERDTree (文件树)

| 快捷键 | 功能 |
|--------|------|
| `<Leader>nf` | 切换文件树面板 |
| `o` | 打开文件/目录 |
| `go` | 预览打开文件 |
| `t` | 在新标签页打开 |
| `T` | 在新标签页后台打开 |
| `i` | 水平分屏打开 |
| `s` | 垂直分屏打开 |
| `p` | 跳到父目录 |
| `q` | 关闭 NERDTree |

#### Tagbar (代码结构)

| 快捷键 | 功能 |
|--------|------|
| `<Leader>tt` | 切换代码结构面板 |
| `Enter` | 跳转到标签 |
| `p` | 跳到标签定义处但保持光标在面板 |
| `P` | 在预览窗口显示 |
| `zo` | 展开节点 |
| `zc` | 折叠节点 |
| `zO` | 递归展开 |
| `zC` | 递归折叠 |

#### FZF (模糊搜索)

| 快捷键 | 功能 |
|--------|------|
| `:Files` | 文件搜索 |
| `:Rg` | 内容搜索 |
| `:Buffers` | 缓冲区搜索 |
| `:History` | 命令历史 |
| `:History:` | 搜索命令历史 |
| `:Tags` | 项目标签 |
| `:BTags` | 当前缓冲区标签 |

#### Undotree (撤销历史)

| 快捷键 | 功能 |
|--------|------|
| `<Leader>u` | 切换撤销历史树 |
| `Enter` | 还原到选定状态 |
| `t` | 切换时间戳显示 |
| `p` | 跳到父节点 |
| `q` | 关闭面板 |

#### GitGutter (Git 变更)

| 快捷键 | 功能 |
|--------|------|
| `<Leader>d` | 切换 Git 变更显示 |
| `]c` | 跳到下一个变更处 |
| `[c` | 跳到上一个变更处 |
| `hp` | 预览变更 |

#### Goyo (专注模式)

| 快捷键 | 功能 |
|--------|------|
| `<Leader>z` | 切换专注模式 |
| `q` | 退出专注模式 (自动) |

#### EasyMotion (快速跳转)

| 快捷键 | 功能 |
|--------|------|
| `f{char}` | 向前跳转到字符 |
| `F{char}` | 向后跳转到字符 |
| `t{char}` | 跳到字符前 |
| `T{char}` | 跳到字符后 |
| `s{char}{char}` | 两字符跳转 |
| `/{chars}` | 多字符搜索 |
| `<Leader>f{char}` | 使用 Leader 前缀 |

#### vim-surround (环绕编辑)

| 快捷键 | 功能 |
|--------|------|
| `cs"'` | 双引号改为单引号 |
| `cs"( ` | 双引号改为加空格括号 |
| `ds"` | 删除引号 |
| `ysiw"` | 单词加引号 |
| `S"` | 选中区域加引号 |

#### nerdcommenter (注释)

| 快捷键 | 功能 |
|--------|------|
| `<Leader>cc` | 注释当前行/选区 |
| `<Leader>cu` | 取消注释 |
| `<Leader>c<space>` | 切换注释 |
| `<Leader>ca` | 切换到行尾注释 |
| `<Leader>cs` | 性感注释 (带格式) |

#### vim-visual-multi (多光标)

| 快捷键 | 功能 |
|--------|------|
| `<Leader>w` | 选择单词 (多次按下扩展) |
| `I` | 插入模式 (多光标) |
| `A` | 追加模式 (多光标) |
| `n` | 跳到下一个匹配 |
| `N` | 跳到上一个匹配 |
| `q` | 跳过当前并跳到下一个 |
| `Esc` | 退出多光标模式 |

#### vim-fugitive (Git)

| 快捷键 | 功能 |
|--------|------|
| `:Git` | 运行 Git 命令 |
| `:G` | 显示 Git 状态 |
| `:Gread` | 检出文件 |
| `:Gwrite` | 添加到暂存区 |
| `:Gdiff` | 显示 diff |
| `<Leader>v` | 在 GitHub 查看当前行 |

---

## 插入模式快捷键

| 快捷键 | 功能 |
|--------|------|
| `$1` | 插入 `()` 并移动光标到中间 |
| `$2` | 插入 `[]` 并移动光标到中间 |
| `$3` | 插入 `{}` 并移动光标到中间 |
| `$4` | 插入 `{}` 并在新行输入 |
| `$q` | 插入 `''` 并移动光标到中间 |
| `$e` | 插入 `""` 并移动光标到中间 |
| `$t` | 插入 `<>` 并移动光标到中间 |

### Python 专用

| 快捷键 | 展开为 |
|--------|--------|
| `$r` | `return ` |
| `$i` | `import ` |
| `$p` | `print ` |
| `$f` | `# --- ` |

### JavaScript/TypeScript 专用

| 快捷键 | 展开为 |
|--------|--------|
| `$r` | `return ` |
| `$f` | `// --- ` |

---

## 命令行模式快捷键

| 快捷键 | 功能 |
|--------|------|
| `<C-A>` | 跳到行首 |
| `<C-E>` | 跳到行尾 |
| `<C-K>` | 删除到行尾 |
| `<C-P>` | 上一个命令 |
| `<C-N>` | 下一个命令 |

---

## 按键可视化

```
┌─────────────────────────────────────────────────────────┐
│  常用快捷键地图                                         │
├──��──────────────────────────────────────────────────────┤
│                                                         │
│  文件浏览             开发工具           编辑功能       │
│  ─────────           ────────           ────────       │
│  ;nf NERDTree        tt Tagbar          y 复制        │
│  :Files FZF          u  Undotree        p  粘贴        │
│  :Rg 搜索            d  GitGutter       m  删除空行    │
│                                                         │
│  跳转                 Git                注释           │
│  ────                ───                ───           │
│  n 跳转定义           z  Goyo            cc 注释       │
│  b 跳转回             v  GitHub          cu 取消注释   │
│  f 快速跳转                               cc 切换      │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

---

## 故障排除

### 插件安装失败

```bash
# 手动安装 fzf (如果自动安装失败)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# 重新安装插件
vim -u ~/.vim_kim/my_configs.vim -c "PlugInstall" -c "qa!"
```

### ctags 未找到

确保已安装 Universal Ctags：

```bash
# macOS
brew install universal-ctags

# Ubuntu
sudo apt install universal-ctags
```

### 配置不生效

确保 `VIMINIT` 环境变量设置正确：

```bash
echo $VIMINIT
# 应该输出: source ~/.vim_kim/my_configs.vim
```

---

## 自定义

在 `my_configs.vim` 文件末尾添加自定义配置：

```vim
" 自定义设置
let g:自定义选项 = value
nnoremap <Leader>自定义键 :自定义命令<CR>
```

---

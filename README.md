# chatgpt-vim

A Vim plugin for interacting with OpenAI's ChatGPT API. This plugin allows you to send text from your Vim buffer to ChatGPT and receive generated responses directly in Vim.

## Prerequisites

- Vim with Python 3 support
- An OpenAI API key for accessing ChatGPT. Sign up for API access [here](https://beta.openai.com/signup/).

## Installation

### Using Vundle

1. Add the following line to your `.vimrc`:
```
    Plugin 'grokouser/chatgpt-vim' 
```
2. Run `:PluginInstall` in Vim.

### Setup

1. Place the `chatgpt-vim` project in the `~/.vim/bundle` directory.
```bash
    cd ~/.vim/bundle
    git clone git@github.com:grokouser/chatgpt-vim.git
```
2. Add your OpenAI API key to the `chatgpt.vim` script found in `~/.vim/bundle/chatgpt-vim/plugin` by replacing `YOUR_API_KEY_HERE` with your actual API key.
3. Make sure to install the  openai  python module.
```bash
    pip install openai
```
## Usage

1. In visual mode, select the text you want to send to ChatGPT.  Hit the 'v' character Move the cursor to the end of the text block you want to query with.
2. Press `<leader>g` to send the selected text to ChatGPT. Note: `<leader>` is usually the backslash character (`\`) in Vim, but it may be different depending on your configuration.

3. The chosen response will be inserted after the selected text in your buffer.

## License

This project is licensed under the MIT License.

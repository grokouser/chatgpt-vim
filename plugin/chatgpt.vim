
function! ChatGPT() abort
    let api_key = 'YOUR_API_KEY_HERE'
    let num_choices = 1

    if !has('python3')
        echoerr 'Python 3 support is required.'
        return
    endif

    if !filereadable(expand('~/.vim/bundle/chatgpt-vim/chatgpt_api.py'))
        echoerr 'chatgpt_api.py not found.'
        return
    endif

    python3 << EOF
import sys
sys.path.append(vim.eval("expand('~/.vim/bundle/chatgpt-vim')"))
import chatgpt_api
EOF

    let prompt = join(getline("'<", "'>"), ' ')

    " Get the response from the ChatGPT API
    let response = py3eval('chatgpt_api.generate_response(' . string(api_key) . ', ' . string(prompt) . ', num_choices=' . string(num_choices) . ')["choices"]')

    " Remove the unwanted characters from the response
    let response = map(response, {_, v -> substitute(v['text'], "\x00", "", "g")})

    let chosen_text = response[0]
    call setline("'>", getline("'>") . chosen_text)
endfunction

vnoremap <silent> <leader>g :<C-u>call ChatGPT()<CR>
command! -range=% -nargs=0 ChatGPT :<line1>,<line2>call ChatGPT()


"
" Use g:tweetvim_advanced_filter.func for filtering
" This func must get one argument which is tweet info as dict
" and return weather filtering this tweet or not

function! tweetvim#filter#advanced#execute(tweets)
    if !exists('g:tweetvim_advanced_filter')
                \ || !has_key(g:tweetvim_advanced_filter, 'func')
        return a:tweets
    endif

    return filter(a:tweets, "!g:tweetvim_advanced_filter.func(v:val)")
endfunction

" register the filter
let g:tweetvim_filters = get(g:, 'tweetvim_filters', ['ngword', 'advanced'])

if count(g:tweetvim_filters, 'advanced') == 0
    call add(g:tweetvim_filters, 'advanced')
endif

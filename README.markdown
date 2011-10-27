
unite-converter-erase-bufnr
===========================

unite converter to erase bufnr


usage
-----

### vimrc

    call unite#custom_filters('buffer,buffer_tab', 
          \ ['matcher_default', 'sorter_default', 'converter_erase_bufnr'])

### before

    README.markdown [28 %a +]

### after

    README.markdown

license
-------

MIT License

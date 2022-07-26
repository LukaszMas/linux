# How-To Use sed(stream editor) to replace string occurence (cmd):

Ref guide at: [cybercity][1]

1. To replace in place occurences of the `old-text` use:
    - `sed -i 's/old-text/new-text/g' *.<extension>`
    - Explained:
        -  `-i`: inplace transformation
        - `s`:  substitute
        - `g`: global (every occurence in the instance)

[1]: <https://www.cyberciti.biz/faq/how-to-use-sed-to-find-and-replace-text-in-files-in-linux-unix-shell/> "cybercity"

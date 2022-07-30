# How-To Generate ssh-keys (cmd):

Ref guide at: [github docs][1]

1. Check available ssh-keys on your computer:
    - `for key in ~/.ssh/id_*; do ssh-keygen -l -f "${key}"; done | uniq`

2. Generate id_ed25519 (Twisted Edwards curve):
    - `ssh-keygen -t ed25519 -C "email@example.com"`
    - To print your newly generated ssh_key:
        - `cat ~/.ssh/id_ed25519.pub`
        - copy & paste where needed

3. Add your key to the ssh-agent:
    - `eval "$(ssh-agent -s)"`
    - `ssh-add ~/.ssh/id_ed25519`

4. (opt) Generate RSA (Rivest-Shamir-Adleman) also (Asymetric cryptography algorithm) key:
    - `ssh-keygen -t rsa -b 4096 -C "email@example.com"`

4. Additional resources:
    - [ssh.com][2]

[1]: <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent> "github docs"
[2]: <https://www.ssh.com/academy/ssh/keygen> "ssh.com"

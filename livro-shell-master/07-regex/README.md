# CapÃ­tulo 7 â Shell Script Profissional

## passwd

Este arquivo Ã© uma cÃ³pia do arquivo `/etc/passwd` usado no livro, para que vocÃª possa fazer os mesmos comandos e obter os mesmos resultados.

Apenas troque `/etc/passwd` por somente `passwd`. Por exemplo, o primeiro
comando Ã©:

    grep ^root /etc/passwd

EntÃ£o vocÃª sÃ³ precisa fazer:

    grep ^root passwd


## txt2regex

O txt2regex Ã© o programa citado no final do capÃ­tulo e serve para fazer expressÃµes regulares apenas respondendo perguntas. Aqui estÃ¡ seu cÃ³digo-fonte:

<https://github.com/aureliojargas/txt2regex/blob/master/txt2regex.sh>

Para executÃ¡-lo em sua mÃ¡quina, basta [baixÃ¡-lo deste endereÃ§o](https://raw.github.com/aureliojargas/txt2regex/master/txt2regex.sh) e executÃ¡-lo na linha de comando:

    bash ~/Downloads/txt2regex.sh

VocÃª tambÃ©m pode estudar o seu cÃ³digo-fonte para aprender tÃ©cnicas avanÃ§adas de shell, pois este programa Ã© feito inteiramente com os comandos builtin do Bash.

Mas cuidado! Este cÃ³digo eu fiz antes de "ver a luz" do cÃ³digo limpo, entÃ£o nÃ£o o tome como exemplo. Nunca mais toquei nele desde 2004 e jÃ¡ nÃ£o sei mais como ele funciona :)

AliÃ¡s, se vocÃª gostar do programa e quiser se aprofundar em shell, um bom projeto Ã© limpar este cÃ³digo seguindo as recomendaÃ§Ãµes do livro. Que tal? Como ele Ã© usado mundialmente, faÃ§a tudo em inglÃªs. Se vocÃª conseguir fazer isso sem quebrar o programa, ganha o posto de dono. Qualquer coisa me avise.


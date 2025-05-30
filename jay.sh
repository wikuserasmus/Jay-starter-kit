#!/data/data/com.termux/files/usr/bin/bash

echo "🎧 Jay is aan diens. Tik 'stop' om te eindig."

while true; do
    read -p "🧠>> " command

    if [[ "$command" == "stop" ]]; then
        echo "Tot later, Baas!"
        break
    elif [[ "$command" == "email check" ]]; then
        bash $HOME/tmax/modules/email_ai.sh
    elif [[ "$command" == "scroll" ]]; then
        bash $HOME/tmax/modules/scrollgen.sh
    elif [[ "$command" == "clients" ]]; then
        bash $HOME/tmax/modules/kliente_soek.sh
    else
        echo "Ek verstaan nie daai een nie, maar ek leer graag."
    fi
done

#!/usr/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

WATCH_DIRS=(/home/$USER/Test /home/$USER/Downloads)
CURRENT_DAY=$(date +%F)


function move_files() {
    for FILE in $1
    do
        mv "${2}/${FILE}" "${2}/${CURRENT_DAY}"
    done
}

for DIR in "${WATCH_DIRS[@]}"
do
    if [ ! -d "${DIR}/${CURRENT_DAY}" ]; then
        $(mkdir -p "${DIR}/${CURRENT_DAY}")
    fi

    FILES="$(ls "${DIR}" -I '[0-9][0-9][0-9][0-9]\-[0-9][0-9]\-[0-9][0-9]')"

    move_files "${FILES[@]}" "${DIR}"

done

#restore IFS
IFS=$SAVEIFS

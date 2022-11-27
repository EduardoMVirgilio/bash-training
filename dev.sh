#!/usr/bin/env bash

Help()
{
  # Display Help
  echo "Add description of the script functions here."
  echo
  echo "Syntax: ./dev.sh [-g|h|f|b]"
  echo "options:"
  echo "g     Create full stack project."
  echo "h     Print this Help."
  echo "f     Create frontend project."
  echo "b     Create rest api project."
  echo
}

Front(){
  echo "Add title of the project"
  read title;
  options=("Static" "React" "Vue" "Template Engine")
  select opt in "${options[@]}"
    do
      case $opt in
        "Static")
          echo "You chose choice Static"
          exit;;
        "React")
          echo "you chose choice React"
          react=("Basic" "Router" "NextJS" "Remix")
          select opt in "${react[@]}"
            do
              case $opt in
                "Basic")
                  echo "You chose choice Basic"
                  exit;;
                "Router")
                  echo "You chose choice Router"
                  exit;;
                "NextJS")
                  echo "You chose choice NextJS"
                  exit;;
                "Remix")
                  echo "You chose choice Remix"
                  exit;;
                *) echo "Invalid option. Try another one.";continue;;
              esac
          done
          exit;;
        "Vue")
          echo "you chose choice Vue"
          vue=("Basic" "Nuxt" "VuePress" "ViteJS")
          select opt in "${vue[@]}"
            do
              case $opt in
                "Basic")
                  echo "You chose choice npm init vue@latest "
                  exit;;
                "Nuxt")
                  echo "You chose choice npx create-nuxt-app $title"
                  exit;;
                "VuePress")
                  echo "You chose choice npx create-vuepress-site $title"
                  exit;;
                "ViteJS")
                  echo "You chose choice npm create vite@latest"
                  exit;;
                *) echo "Invalid option. Try another one.";continue;;
              esac
          done
          exit;;
        "Template Engine")
          echo "you chose choice Template Engine"
          template=("EJS" "PUG")
          select opt in "${template[@]}"
            do
              case $opt in
                "EJS")
                  echo "You chose choice EJS"
                  exit;;
                "PUG")
                  echo "You chose choice PUG"
                  exit;;
                *) echo "Invalid option. Try another one.";continue;;
              esac
          done
          exit;;
        *) echo "Invalid option. Try another one.";continue;;
      esac
  done
}


while getopts ":hgfb" option; do
  case $option in
    h)
      Help
      exit;;
    g)
      echo "creating full stack project";
      exit;;
    f)
      echo "creating frontend project";
      Front
      exit;;
    b)
      echo "creating rest api project";
      exit;;
  esac
done
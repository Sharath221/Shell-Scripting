#!/binbash
install_docker() {
    DIST=$1
    echo $DIST
    VER=$(cat /etc/lsb-release | grep -i DISTRIB_RELASE | cut -d "=" -f2)
    if ["$VER" = "$DIST" ]; then
        echo "Let Install.."
    else
        echo "Your are not using 18.04 version"
    fi

}

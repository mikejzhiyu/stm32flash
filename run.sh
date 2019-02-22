case "$1" in
	"")
		echo "Usage: bash $0 { bin_file }"
		exit 2
	;;
esac

./stm32flash /dev/ttyUSB0 -j
./stm32flash /dev/ttyUSB0 -k
./stm32flash /dev/ttyUSB0 -e 0 -w "$1"

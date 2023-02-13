shopt -s nullglob
for f in cairo-project/*.cairo; do
    echo "compile $f"
    starknet-compile $f --output $f.output.json --abi $f.abi.json
done
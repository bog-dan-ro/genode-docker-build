#/bin/bash

git clone https://github.com/genodelabs/genode.git
git clone https://github.com/ssumpf/genode-riscv.git genode/repos/riscv

pushd genode
./tool/create_builddir riscv
pushd build/riscv
sed -i 's/#MAKE += -j4/MAKE += -j40/' etc/build.conf
sed -i 's/#REPOSITORIES += $(GENODE_DIR)\/repos\/riscv/REPOSITORIES += $(GENODE_DIR)\/repos\/riscv/' etc/build.conf
make core bootstrap
popd
popd

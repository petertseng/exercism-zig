Vagrant.configure('2') do |config|
  config.vm.box = 'ogarcia/archlinux-x64'
  config.vm.provision 'shell', inline: <<-SHELL
    ln -s /vagrant /home/vagrant/repo
    pacman -Sy --noconfirm rxvt-unicode-terminfo

    ver=0.6.0
    f=zig-linux-x86_64-$ver
    curl -o $f.tar.xz https://ziglang.org/download/$ver/$f.tar.xz
    tar xJf $f.tar.xz
    mkdir /home/vagrant/bin
    ln -s ../$f/zig /home/vagrant/bin

    echo 'export PATH="$PATH:/home/vagrant/bin"' >> /home/vagrant/.bashrc
  SHELL
end

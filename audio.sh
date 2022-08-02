# Install Audio
install="$(cat ./install)"
update="$(cat ./update)"

$install openssh-server git
$install wireplumber pipewire-media-session- pipewire-pulse pavucontrol alsa-utils
cp /usr/share/doc/pipewire/examples/systemd/user/pipewire-pulse.* /etc/systemd/user/
touch /etc/pipewire/media-session.d/with-alsa

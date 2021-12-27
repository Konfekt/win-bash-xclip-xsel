# Maintainer: @Konfekt at https://github.com/Konfekt/win-bash-xclip-xsel
pkgname=win-bash-xclip-xsel
_clonedname=win-bash-xclip-xsel
pkgver=0.0.1
pkgrel=1
pkgdesc="WSL/Git-Bash binding to xclip and xsel"
arch=('any')
url="https://github.com/Konfekt/win-bash-xclip-xsel"
license=('Unlicense')
makedepends=('git')
conflicts=(	'xclip'
			'xsel')
source=("git+https://github.com/Konfekt/${_clonedname}.git")
sha256sums=('SKIP')


package() {
	install -Dm755 "${srcdir}/${_clonedname}/clip.sh" "${pkgdir}/usr/bin/xclip"
	install -Dm755 "${srcdir}/${_clonedname}/clip.sh" "${pkgdir}/usr/bin/xsel"
}

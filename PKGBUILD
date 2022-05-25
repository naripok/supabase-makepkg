# Maintainer: Fernando Canteruccio <fernando@megali.co.uk>

pkgname=supabase-cli
_pkgname=supabase
pkgver=v0.26.0
pkgrel=1
pkgdesc='Supabase CLI'
arch=(x86_64 i686)
url="https://github.com/supabase/cli"
license=('MIT')
makedepends=('go')
provides=(supabase)
conflicts=(supabase)
source=("git+$url")
sha256sums=('SKIP')

build() {
  cd cli
  git checkout $pkgver
  go build \
    -gcflags "all=-trimpath=${PWD}" \
    -asmflags "all=-trimpath=${PWD}" \
    -ldflags "-extldflags ${LDFLAGS}" \
    -o $_pkgname
}

package() {
  cd cli
  install -Dm755 "$_pkgname" "$pkgdir/usr/bin/$_pkgname"
  install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$_pkgname/LICENSE"
}

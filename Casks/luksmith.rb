cask "luksmith" do
  version "1.0.5"
  sha256 "e25a95caeb589665700416a4e0ac9ad0a8182190bddfadf9f763de450eb051ed"

  url "https://github.com/Betim-Hodza/luksmith-releases/releases/download/v#{version}/Luksmith-#{version}.pkg"
  name "Luksmith"
  desc "Mount and manage LUKS-encrypted ext filesystems"
  homepage "https://luksmith.app/"

  depends_on macos: :tahoe

  pkg "Luksmith-#{version}.pkg"

  uninstall pkgutil: "com.bay.luksmacos.pkg"
end

cask "velin" do
  version "0.4.0"
  sha256 "8bd974da8fc44dad68ddb15ee5ec6f3828479206952dbd23a4292b2b9af19c5c"

  url "https://github.com/velinmd/velin-releases/releases/download/v#{version}/Velin-#{version}.zip"
  name "Velin"
  desc "Your notes and data, beautifully"
  homepage "https://velin.md"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Velin.app"
  binary "#{appdir}/Velin.app/Contents/MacOS/velin"

  zap trash: [
    "~/.config/velin",
    "~/Library/Caches/velin",
  ]
end

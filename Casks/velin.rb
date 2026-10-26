cask "velin" do
  version "0.3.0"
  sha256 "411ccb11079df49c6754c82afa27458368dfa3fb9db584357af8bbf884e21712"

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

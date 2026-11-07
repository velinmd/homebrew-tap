cask "velin" do
  version "0.6.0"
  sha256 "474771d4f20bd4b5981c42edb182b79bd28a9e90ff8aabd1ba51db2ad403bf01"

  url "https://github.com/velinmd/velin-releases/releases/download/v#{version}/Velin-#{version}.zip"
  name "Velin"
  desc "Your notes and data, beautifully"
  homepage "https://velin.md"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Velin updates itself (Settings → General); brew upgrade leaves it to the app.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Velin.app"
  binary "#{appdir}/Velin.app/Contents/MacOS/velin"

  zap trash: [
    "~/.config/velin",
    "~/Library/Caches/velin",
  ]
end

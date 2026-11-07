cask "velin" do
  version "0.5.0"
  sha256 "0d0432ef5010b1d9efd3c2846acff1bc150d8a24a4dc31bcda316c3d2a303064"

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

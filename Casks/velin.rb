cask "velin" do
  version "0.7.0"
  sha256 "df44c8fba7ad65b5a3b814a9f776446bb5c672e300cbf187a5af4ccf966e8f1a"

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

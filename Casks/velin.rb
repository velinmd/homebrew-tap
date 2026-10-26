cask "velin" do
  version "0.3.1"
  sha256 "276a4fb08a3fe0c2e6dbd46f32bdca593d6133326eb3488d9d613a447354178d"

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

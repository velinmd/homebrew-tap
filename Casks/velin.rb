cask "velin" do
  version "0.1.0"
  sha256 "51eefd430a87084caefe571390f56e3344dff102b236a1ad5881105f1986d567"

  url "https://github.com/velinmd/velin-releases/releases/download/v#{version}/Velin-#{version}.zip"
  name "Velin"
  desc "Native notes app for plain Markdown files"
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

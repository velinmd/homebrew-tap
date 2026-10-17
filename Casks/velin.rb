cask "velin" do
  version "0.1.1"
  sha256 "47ca8c1b93ce787a18dd2056e2e22ef27a013c12664bbc3be31c585f395e3010"

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

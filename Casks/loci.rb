cask "loci" do
  version "2.1.5"
  sha256 "5a32d16885e76aed1ede45a6abb6caf24f1953e2893a97c291458139e6abd04d"

  url "https://akregqxqe8wb6ueu.public.blob.vercel-storage.com/mac/#{version}/#{version}/Loci-5a32d16885e76aed1ede45a6abb6caf24f1953e2893a97c291458139e6abd04d.dmg"
  name "Loci"
  desc "Private AI assistant that runs models locally"
  homepage "https://askloci.ai/"

  livecheck do
    url "https://akregqxqe8wb6ueu.public.blob.vercel-storage.com/mac-rust/updates/stable/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe
  container type: :dmg

  app "Install Loci.app/Contents/Resources/Loci.app"

  uninstall quit: "ai.askloci.rust"

  zap trash: [
    "~/Library/Application Support/LociRust",
    "~/Library/Caches/ai.askloci.rust",
    "~/Library/Caches/LociRust",
    "~/Library/HTTPStorages/ai.askloci.rust",
    "~/Library/Preferences/ai.askloci.rust.plist",
    "~/Library/Saved Application State/ai.askloci.rust.savedState",
    "~/Library/WebKit/ai.askloci.rust",
  ]
end

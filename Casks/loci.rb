cask "loci" do
  version "2.1.6"
  sha256 "42c74a52018bfd7433f650f71f563ddcd1a29b223d7a41b2a6490846819dee18"

  url "https://akregqxqe8wb6ueu.public.blob.vercel-storage.com/mac/#{version}/#{version}/Loci-42c74a52018bfd7433f650f71f563ddcd1a29b223d7a41b2a6490846819dee18.dmg"
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

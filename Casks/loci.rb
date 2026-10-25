cask "loci" do
  version "0.1.27"
  sha256 "88b9231ba90127815b18ea0f217b3822b1efd7276aba1f492b5f1adee46f1c66"

  url "https://akregqxqe8wb6ueu.public.blob.vercel-storage.com/mac/#{version}/#{version}/Loci-88b9231ba90127815b18ea0f217b3822b1efd7276aba1f492b5f1adee46f1c66.dmg"
  name "Loci"
  desc "Private AI assistant that runs models locally"
  homepage "https://askloci.ai/"

  livecheck do
    url "https://akregqxqe8wb6ueu.public.blob.vercel-storage.com/mac-rust/updates/stable/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma
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

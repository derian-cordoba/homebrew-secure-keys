class SecureKeys < Formula
  desc 'Secure Keys is a simple tool to manage your secret keys in your iOS project'.freeze
  version '1.0.4'
  homepage 'https://github.com/derian-cordoba/secure-keys'.freeze
  url 'https://github.com/derian-cordoba/secure-keys/archive/refs/tags/v1.0.4.tar.gz'.freeze
  sha256 'e90428a47e685ada493d022e5a567b1c0f3b82421ab8c13c459312542239413c'.freeze
  license 'MIT'.freeze

  depends_on 'ruby@3.3'
  depends_on macos: :sonoma

  def install
    ENV['GEM_HOME'] = libexec
    ENV['GEM_PATH'] = libexec

    system 'gem', 'build', 'secure-keys.gemspec'
    system 'gem', 'install', "secure-keys-#{version}.gem", '--no-document'

    (bin / 'secure-keys').write_env_script libexec / 'bin/secure-keys',
                                           PATH: "#{Formula['ruby@3.3'].opt_bin}:#{libexec}/bin:$PATH",
                                           GEM_HOME: libexec.to_s,
                                           GEM_PATH: libexec.to_s
  end

  test do
    system 'which', 'secure-keys'
  end
end

class SecureKeys < Formula
  desc 'Secure Keys is a simple tool to manage your secret keys in your iOS project'.freeze
  homepage 'https://github.com/derian-cordoba/secure-keys'.freeze
  url 'https://github.com/derian-cordoba/secure-keys/archive/refs/tags/v1.1.6.tar.gz'.freeze
  sha256 '08e737c959e83b96eeecde99c7ed24c29c384041079693e4523b6349b2b3768b'.freeze
  license 'MIT'.freeze
  head 'https://github.com/derian-cordoba/secure-keys'.freeze, branch: 'main'.freeze

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
    system 'secure-keys', '--help'
    system 'secure-keys', '--version'
    system 'secure-keys', '--xcframework', '--help'

    assert_match "secure-keys version: v#{version}", shell_output("#{bin}/secure-keys --version")
  end
end

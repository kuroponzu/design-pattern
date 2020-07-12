require "./fileentry.rb"
require "./direntry.rb"

class Main
  def self.run
    root = DirEntry.new(name: "root")
    tmp = DirEntry.new(name: "tmp")
    tmp.add(entry: FileEntry.new(name: "conf"))
    tmp.add(entry: FileEntry.new(name: "data"))
    root.add(entry: tmp)
    root.ls_entry(prefix: "")
    root.remove
  end
end

Main.run

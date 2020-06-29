require "../factory/*"

class TableFactory < Factory
  def create_link(caption:, url:)
    TableLink.new(caption: caption, url: url)
  end

  def create_tray(caption:)
    TableTray.new(caption: caption)
  end

  def create_page(title:, author:)
    TablePage.new(title: title, author: author)
  end
end

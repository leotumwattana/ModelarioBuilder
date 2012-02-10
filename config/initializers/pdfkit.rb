PDFKit.configure do |config|
  config.wkhtmltopdf = `which wkhtmltopdf`.gsub(/\n/, '')
  config.default_options = {
    :page_size => 'A3',
    :margin_top    => '0.2in',
    :margin_right  => '0.2in',
    :margin_bottom => '0.2in',
    :margin_left   => '0.5in',
    :print_media_type => true
  }
end
content.scan(/onclick="window.open\('(\/en\/tenders\/.+?)'/).each do |uri|

  pages << {
      page_type: 'details',
      method: 'GET',
      url: "https://www.nupco.com" + uri[0],

  }


end


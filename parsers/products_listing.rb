content.scan(/\(onclick="window.open\('(.+?)'/).each do ||

  pages << {
      page_type: 'details',
      method:'GET',
      url: "https://www.nupco.com/en/tenders",

  }





end
body = Nokogiri.HTML(content)
contract_details = {}
contract_details['tender_id'] = body.at("h5:contains('Tendr Id')").next_element.text.strip
contract_details['submission_deadline'] = body.at("h5:contains('Submission Deadline')").next_element.text.strip
contract_details['bid_opening'] = body.at("h5:contains('Bid Opening')").next_element.text.strip
contract_details['tender_booklet_price'] = body.at("h5:contains('Tender Booklet Price')").next_element.text.gsub(/SR/,'').strip
contract_details['tender_contact_address'] = body.at("h5:contains('Tender Contact')").next_element.text.gsub(/Contact Address/,'').gsub(/Tel[^<>]+/,'').strip
contract_details['tender_contact_phone'] = body.at("h5:contains('Tender Contact')").next_element.text[/(?<=No\.\:)([^<>]+?)\Z/].strip
contract_details['_collection']='contracts'
outputs<< contract_details



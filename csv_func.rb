def writecsv(info)
    CSV.open("public/csv/tag_rx.csv", "wb") do |csv|
        csv << ["campaign_id", "campaign_product_id", "generic_name", "compare_to", "strength", "form", "size", "gold_standard_id", "rolling_yearly_usage", "primary_vendor_code", "primary_ndc", "primary_bid_price", "primary_total_rebate", "primary_net_cost", "annual_gross_spend", "annual_net_spend", "annual_rebate", "bid_vendor", "ndc", "bid_price", "invoice_cost", "total_rebate", "net_cost", "annual_savings", "system_priority"]
        info.each do |row|
            csv << ["#{row[0]}", "#{row[1]}", "#{row[2]}", "#{row[3]}", "#{row[4]}", "#{row[5]}", "#{row[6]}", "#{row[7]}", "#{row[8]}", "#{row[9]}", "#{row[10]}", "#{row[11]}", "#{row[12]}", "#{row[13]}", "#{row[14]}", "#{row[15]}", "#{row[16]}", "#{row[17]}", "#{row[18]}", "#{row[19]}", "#{row[20]}", "#{row[21]}", "#{row[22]}", "#{row[23]}", "#{row[24]}"]
        end
    end
end

def writejson(info)
    array = []
    File.open("public/json/tag_rx.json","w") do |f|
        info.each do |row|
        tempHash = {
        "campaign_id" => "#{row[0]}",
        "campaign_product_id" => "#{row[1]}",
        "generic_name" => "#{row[2]}",
        "compare_to" => "#{row[3]}",
        "strength" => "#{row[4]}",
        "form" => "#{row[5]}",
        "size" => "#{row[6]}",
        "gold_standard_id" => "#{row[7]}",
        "rolling_yearly_usage" => "#{row[8]}",
        "primary_vendor_code" => "#{row[9]}",
        "primary_ndc" => "#{row[10]}",
        "primary_bid_price" => "#{row[11]}",
        "primary_total_rebate" => "#{row[12]}",
        "primary_net_cost" => "#{row[13]}",
        "annual_gross_spend" => "#{row[14]}",
        "annual_net_spend" => "#{row[15]}",
        "annual_rebate" => "#{row[16]}",
        "bid_vendor" => "#{row[17]}",
        "ndc" => "#{row[18]}",
        "bid_price" => "#{row[19]}",
        "invoice_cost" => "#{row[20]}",
        "total_rebate" => "#{row[21]}",
        "net_cost" => "#{row[22]}",
        "annual_savings" => "#{row[23]}",
        "system_priority" => "#{row[24]}",
        }
        array << tempHash
        end
        f.write(array.to_json)
    end
end
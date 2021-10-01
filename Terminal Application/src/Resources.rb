require_relative "Price_list.rb"
include Price_list

module Resources 
  def buy_sentence
    puts "\nPlease input the number of shares to " + Rainbow("PURCHASE").springgreen.bright + ":" + Rainbow("(Only Integer is allowed)").red.bright
  end

  def sell_sentence
    puts "\nPlease input the number of shares to " + Rainbow("SELL").springgreen.bright + ":" + Rainbow("(Only Integer is allowed)").red.bright
  end

  def info(name)
    name = name 
    case name
      when "cba"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("  Industry").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
        [[Rainbow("Commonwealth Bank of Australia (CBA) ").gold + "is Australia's leading providers","",""], 
        ["of integrated financial services, providing retail, business and","",""], 
        ["institutional banking, funds management, superannuation, life insurance,", "", ""], 
        ["general insurance, broking servicesand finance company activities.",Rainbow(" Financials ").gold.bright,"              $"+ Price_list.company("cba").to_s], 
        ["Their operations are conducted primarily in Australia and New Zealand.","",""], 
        ["In addition, they alsooperate in a number of other countries, including","",""],
        ["the United Kingdom, the United States, China, Japan, Singapore, Hong Kong, ","",""],
        ["Indonesia and South Africa.","",""]
        ])        
        puts table.render(:ascii)
      when "csl"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("  Industry  ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("CSL Limited (CSL) ").crimson + "is a global biotechnology company that develops and ","",""], 
             ["delivers innovative medicines that save lives, protect public health and ","",""], 
             ["help people with life-threatening medical conditions live full lives.", Rainbow(" Health Care ").crimson.bright, "              $"+ Price_list.company("csl").to_s], 
             ["CSL is also involved in research, development, manufacture, marketing ","",""], 
             ["and distribution of biopharmaceutical and allied products. CSL's operating ","",""], 
             ["model for its two businesses, CSL Behring and Seqirus.","",""],
            ])
        puts table.render(:ascii)
      when "bhp"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow(" Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("BHP Group Limited (BHP, formerly BHP Billiton Limited) ").chocolate + "is a diversified","",""], 
             ["natural resources company producing commodities along with substantial ","",""], 
             ["interests in oil and gas. BHP's principal business lines are mineral ", Rainbow(" Materials ").chocolate.bright, "              $"+ Price_list.company("bhp").to_s], 
             ["exploration and production, as well as petroleum exploration, production ","",""], 
             ["and refining. BHP's assets, operations and interests are separated into ","",""], 
             ["Petroleum and Potash, Copper, Iron ore, Coal and Nickel.","",""],
            ])
        puts table.render(:ascii)
      when "wbc"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("  Industry").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Westpac Banking Corporation (WBC) ").gold + "is banking and financial services group ","",""], 
             ["that deals in the provision of financial services including lending, ","",""], 
             ["deposit taking, payments services, investment platforms, superannuation ",Rainbow(" Financials ").gold.bright, "              $"+ Price_list.company("wbc").to_s], 
             ["and funds management, insurance services, leasing finance, general finance, ","",""], 
             ["interest rate risk management and foreign exchange services. It nearly","",""], 
             ["serves around 13 million customers.","",""],
            ])
        puts table.render(:ascii)
      when "nab"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("  Industry").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("National Australia Bank Limited (NAB) ").gold + "is a financial services group that provides","",""], 
             ["a comprehensive and integrated range of banking and financial services",Rainbow(" Financials ").gold.bright,"              $"+ Price_list.company("nab").to_s], 
             ["including wealth management throughout Australia and New Zealand, with", "", ""], 
             ["branches located in Asia, the United Kingdom (UK) and the United States (US).","",""], 
            ])
        puts table.render(:ascii)
      when "anz"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("  Industry").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Australia and New Zealand Banking Group Limited (ANZ) ").gold + "provides a range of banking and ","",""], 
             ["financial products and services to retail, small business, corporate and institutional ","",""], 
             ["clients. ANZ operates in Australia, New Zealand, Pacific Division, the United Kingdom ",Rainbow(" Financials ").gold.bright, "              $"+ Price_list.company("anz").to_s], 
             ["and the United States. ANZ main business divisions consist of Retail, Commercial, ","",""], 
             ["Transaction Banking, Loans & Specialised Finance, Markets, Commercial banking and ","",""], 
             ["wealth management services.","",""],
            ])
        puts table.render(:ascii)
      when "mqg"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("  Industry").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Macquarie Group Limited (MQG) ").gold + "is a global provider of banking, financial,","",""], 
             ["advisory, investment and fund management services, headquartered in Sydney.",Rainbow(" Financials ").gold.bright,"              $"+ Price_list.company("mqg").to_s], 
             ["", "", ""], 
            ])
        puts table.render(:ascii)
      when "wes"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("    Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Wesfarmers Limited (WES) ").dodgerblue + "is a diversified business operating in supermarkets, ","",""], 
             ["department stores, home improvement and office supplies, resources, chemicals, ",Rainbow(" Consumer Staples ").dodgerblue.bright,"              $"+ Price_list.company("wes").to_s],  
             ["energy & fertilisers and industrials & safety products. WES is headquartered ", "", ""], 
             ["in Western Australia.","",""], 
            ])
        puts table.render(:ascii)
      when "wow"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("    Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Woolworths (WOW) ").dodgerblue + "is a retail operator in Australia and New Zealand, ","",""], 
             ["with 3,357 stores and approximately 215,000 employees. Its business ",Rainbow(" Consumer Staples ").dodgerblue.bright,"              $"+ Price_list.company("wow").to_s], 
             ["division comprises of Australian Food, New Zealand Food and Big W.", "", ""], 
            ])
        puts table.render(:ascii)
      when "fmg"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow(" Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Fortescue Metals Group Ltd (FMG) ").chocolate + "is an iron ore production and ","",""], 
             ["exploration company with assets located in the Pilbara region of ",Rainbow(" Materials ").chocolate.bright,"              $"+ Price_list.company("fmg").to_s], 
             ["Western Australia.", "", ""], 
            ])
        puts table.render(:ascii)
      when "tls"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("          Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Telstra Corporation Limited (TLS) ").slateblue + "is a provider of telecommunications ","",""], 
             ["and information products and services through its Australian and ","",""], 
             ["offshore operations. TLS has a range of businesses namely fixed ", Rainbow(" Telecommunication Services ").slateblue.bright, "              $"+ Price_list.company("tls").to_s], 
             ["broadband, mobile, data and IP, network application & services (NAS), ","",""], 
             ["digital media and international.","",""], 
            ])
        puts table.render(:ascii)
      when "gmg"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("  Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Goodman Group (GMG) ").orchid + "is a global integrated property group with operations ","",""], 
             ["throughout Australia, New Zealand, Asia, Europe, the United Kingdom, ","",""], 
             ["North America and Brazil. GMG comprised of the stapled entities Goodman ", Rainbow(" Real Estate ").orchid.bright, "              $"+ Price_list.company("gmg").to_s], 
             ["Limited, Goodman Industrial Trust and Goodman Logistics (HK) Limited. GMG ","",""], 
             ["operates four divisions namely Property Investment, Fund Management, Property ","",""], 
             ["Services and Property Development.","",""],
            ])
        puts table.render(:ascii)
      when "tcl" 
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("  Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Transurban Group (TCL) ").rosybrown + "manages and develops urban toll road networks in ","",""], 
             ["Australia and the United States of America. The company engages in the ",Rainbow(" Industrials ").rosybrown.bright,"              $"+ Price_list.company("tcl").to_s], 
             ["development, operation, maintenance and financing of toll road networks ", "", ""], 
             ["as well as management of the associated customer and client relationships. ","",""], 
            ])
        puts table.render(:ascii)
      when "apt"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("       Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Afterpay Limited (APT, formerly Afterpay Touch Group Limited) ").deepskyblue + "provides ","",""], 
             ["technology-driven payments solutions for consumers and businesses ","",""], 
             ["through its Afterpay and Pay Now services and businesses. Afterpay is ", "", ""], 
             ["driving retail innovation by allowing leading retailers to offer a ",Rainbow(" Information Technology ").deepskyblue.bright,"              $"+ Price_list.company("apt").to_s], 
             ["'buy now, receive now, pay later' service that does not require ","",""], 
             ["end-customers to enter into a traditional loan or pay any upfront ","",""],
             ["fees or interest to Afterpay.","",""],
            ])
        puts table.render(:ascii)
      when "rio" 
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow(" Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Rio Tinto Limited (RIO) ").chocolate + "is engaged in minerals and metals exploration, ","",""], 
             ["development, production and processing. The Company's Portfolio of ",Rainbow(" Materials ").chocolate.bright,"              $"+ Price_list.company("rio").to_s], 
             ["assets is condensed into four product groups: Aluminium, Copper & ", "", ""], 
             ["Diamonds, Energy &Minerals and Iron Ore.","",""], 
            ])
        puts table.render(:ascii)
      when "all"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("        Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Aristocrat Leisure Limited (ALL) ").forestgreen + "operates within a single business ","",""], 
             ["which is the development, assembly, sale, distribution and service ","",""], 
             ["of games and systems. Aristocrat Leisure Limited is a for-profit company ", Rainbow(" Consumer Discretionary ").forestgreen.bright, "              $"+ Price_list.company("all").to_s], 
             ["incorporated and domiciled in Australia and limited by shares publicly ","",""], 
             ["traded on the Australian Securities Exchange.","",""], 
            ])
        puts table.render(:ascii)
      when "col"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("    Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Coles Group Limited (COL) ").dodgerblue + "is an Australian retailer, providing customers ","",""], 
             ["with everyday products including fresh food, groceries, general merchandise, ","",""], 
             ["liquor, fuel and financial services through its store network and online ", Rainbow(" Consumer Staples ").dodgerblue.bright, "              $"+ Price_list.company("col").to_s], 
             ["platforms. Coles Group Limited provide value and service to the 21 million ","",""], 
             ["customers with over 2,500 retail outlets nationally.","",""], 
            ])
        puts table.render(:ascii)
      when "rea"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("        Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("REA Group Ltd (REA) ").olive + "provides property and property-related services on ","",""], 
             ["websites and mobile apps across Australia and Asia. Provides digital ","",""], 
             ["tools, information and data for people interested in property. REA helps ", Rainbow(" Communication Services ").olive.bright, "              $"+ Price_list.company("rea").to_s], 
             ["real estate agents, developers, property-related businesses and ","",""], 
             ["advertisers promote their services. REA has two operating segments: ","",""], 
             ["Property & Online Advertising and Financial Services.","",""],
            ])
        puts table.render(:ascii)
      when "xro"
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow("       Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Xero Limited (XRO) ").deepskyblue + "provides a platform for online accounting and business ","",""], 
             ["services to small businesses. It is a New Zealand domiciled public ","",""], 
             ["technology company, listed on the Australian Securities Exchange which ", Rainbow(" Information Technology ").deepskyblue.bright, "              $"+ Price_list.company("xro").to_s],  
             ["deals in the cloud-based accounting software platform for small and ","",""], 
             ["medium-sized businesses.","",""], 
            ])
        puts table.render(:ascii)
      when "ncm" 
        system("clear")
        table = TTY::Table.new([Rainbow("Company Overview").springgreen.bright,Rainbow(" Industry ").springgreen.bright,Rainbow("Share Price ($AUD) at 27th Sep 2021").springgreen.bright],
            [[Rainbow("Newcrest Mining Limited (NCM) ").chocolate + "is involved in exploration, mine development, ","",""], 
             ["mine operations and the sale of gold and gold/ copper concentrate.",Rainbow(" Materials ").chocolate.bright,"              $"+ Price_list.company("ncm").to_s], 
             ["", "", ""], 
            ])
        puts table.render(:ascii)
    end
  end

end

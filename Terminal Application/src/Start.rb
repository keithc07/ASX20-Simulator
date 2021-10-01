require 'rainbow'
require 'tty-font'
require 'tty-prompt'
require 'tty-table'
require 'tty-pie'
require_relative "Resources.rb"
require_relative "Price_list.rb"
include Resources
include Price_list

class MenuControl
    attr_accessor :prompt, :buy_array

    def initialize
        @prompt = TTY::Prompt.new
        @available_deposit = 100000
        @buy_array = []
        @sell_array = []
        @cba = []
        @csl = []
        @bhp = []
        @wbc = []
        @nab = []
        @anz = []
        @mqg = []
        @wes = []
        @wow = []
        @fmg = []
        @tls = []
        @gmg = []
        @tcl = []
        @apt = []
        @rio = []
        @all = []
        @col = []
        @rea = []
        @xro = []
        @ncm = []
    end

    def landing_page
        system("clear")
        font = TTY::Font.new(:starwars)
        puts font.write("ASX20-Simulator")

        puts "\nWelcome to " + Rainbow("ASX20-Simulator").yellow.bright + "!\n"

        puts "Please make use of " + Rainbow("ASX20-Simulator").yellow.bright + " for your investment! It " + Rainbow("imitates real-life equity transactions ").blue.bright + "for companies in "+ Rainbow("ASX20 ").yellow + "and " + Rainbow("helps you plan for your investment allocation.").blue.bright

        puts "\n" + Rainbow("Instuctions:").green.bright.underline
        puts "\n" + Rainbow("Everyone has a default deposit of $100,000").bg(:magenta)
        puts "\n" + "Choosing " + Rainbow("Company-List").aqua.bright + ", it lists all " + Rainbow("ASX20 ").yellow + "companies. Inside each company, there are brief information of the company and the share price of it. "+ Rainbow("You can do share transactions here only.").red.bright
        puts "Choosing " + Rainbow("Portfolio-List").aqua.bright + ", you can examine the current status of your investment allocation with the remaining amount."
        puts "Choosing " + Rainbow("Exit").aqua.bright + " can " + Rainbow("exit the porgram.").red.bright

        puts ""

        prompt.select("Choose the following:") do |menu| 
            menu.choice Rainbow("Company-List").aqua.bright,->{company_list}
            menu.choice Rainbow("Portfolio-Status").aqua.bright,->{portfolio_status}
            menu.choice Rainbow("Exit").aqua.bright,->{exit}
        end
    end

    def company_list
        system ("clear")
        puts Rainbow("~Company names color represents their industry~").bg(:magenta)
        puts "(Information is provided by ASX official website)"
        puts "\n"
        prompt.enum_select('Company-List (21 is "Go back"):') do |company_list|
            company_list.choice Rainbow('Commonwealth Bank of Australia(CBA)').gold,->{cba}
            company_list.choice Rainbow('CSL Ltd(CSL)').crimson,->{csl}
            company_list.choice Rainbow('BHP Group Ltd(BHP)').chocolate,->{bhp}
            company_list.choice Rainbow('Westpac Banking Corporation(WBC)').gold,->{wbc}
            company_list.choice Rainbow('National Australia Bank Ltd(NAB)').gold,->{nab}
            company_list.choice Rainbow('Australia and New Zealand Banking Group Ltd(ANZ)').gold,->{anz}
            company_list.choice Rainbow('Macquarie Group Ltd(MQG)').gold,->{mqg}
            company_list.choice Rainbow('Wesfarmers Ltd(WES)').dodgerblue,->{wes}
            company_list.choice Rainbow('Woolworths Group Ltd(WOW)').dodgerblue,->{wow}
            company_list.choice Rainbow('Fortescue Metals Group Ltd(FMG)').chocolate,->{fmg}
            company_list.choice Rainbow('Telstra Corporation Ltd(TLS)').slateblue,->{tls}
            company_list.choice Rainbow('Goodman Group(GMG)').orchid,->{gmg}
            company_list.choice Rainbow('Transurban Group(TCL)').rosybrown,->{tcl}
            company_list.choice Rainbow('Afterpay Ltd(APT)').deepskyblue,->{apt}
            company_list.choice Rainbow('RIO Tinto Ltd(RIO)').chocolate,->{rio}
            company_list.choice Rainbow('Aristocrat Leisure Ltd(ALL)').forestgreen,->{all}
            company_list.choice Rainbow('Coles Group Ltd(COL)').dodgerblue,->{col}
            company_list.choice Rainbow('REA Group Ltd(REA)').olive,->{rea}
            company_list.choice Rainbow('Xero Ltd(XRO)').deepskyblue,->{xro}
            company_list.choice Rainbow('Newcrest Mining Ltd(NCM)').chocolate,->{ncm}
            company_list.choice 'Go back',->{landing_page}
        end
    end

#-----------------------------------------------------------------------------------------------------------------------------------    
    
    def cba
        Resources.info("cba")
        prompt.select('Choose the following:') do |cba_list|
            cba_list.choice 'Buy shares',->{buy_shares_cba}
            cba_list.choice 'Sell shares',->{sell_shares_cba}
            cba_list.choice 'Display available deposits',->{availabe_deposits_cba}
            cba_list.choice 'Go back',->{company_list}
        end
    end

    def csl
        Resources.info("csl")
        prompt.select('Choose the following:') do |csl_list|
            csl_list.choice 'Buy shares',->{buy_shares_csl}
            csl_list.choice 'Sell shares',->{sell_shares_csl}
            csl_list.choice 'Display available deposits',->{availabe_deposits_csl}
            csl_list.choice 'Go back',->{company_list}
        end
    end

    def bhp
        Resources.info("bhp")
        prompt.select('Choose the following:') do |bhp_list|
            bhp_list.choice 'Buy shares',->{buy_shares_bhp}
            bhp_list.choice 'Sell shares',->{sell_shares_bhp}
            bhp_list.choice 'Display available deposits',->{availabe_deposits_bhp}
            bhp_list.choice 'Go back',->{company_list}
        end
    end

    def wbc
        Resources.info("wbc")
        prompt.select('Choose the following:') do |wbc_list|
            wbc_list.choice 'Buy shares',->{buy_shares_wbc}
            wbc_list.choice 'Sell shares',->{sell_shares_wbc}
            wbc_list.choice 'Display available deposits',->{availabe_deposits_wbc}
            wbc_list.choice 'Go back',->{company_list}
        end
    end

    def nab
        Resources.info("nab")
        prompt.select('Choose the following:') do |nab_list|
            nab_list.choice 'Buy shares',->{buy_shares_nab}
            nab_list.choice 'Sell shares',->{sell_shares_nab}
            nab_list.choice 'Display available deposits',->{availabe_deposits_nab}
            nab_list.choice 'Go back',->{company_list}
        end
    end

    def anz
        Resources.info("anz")
        prompt.select('Choose the following:') do |anz_list|
            anz_list.choice 'Buy shares',->{buy_shares_anz}
            anz_list.choice 'Sell shares',->{sell_shares_anz}
            anz_list.choice 'Display available deposits',->{availabe_deposits_anz}
            anz_list.choice 'Go back',->{company_list}
        end
    end

    def mqg
        Resources.info("mqg")
        prompt.select('Choose the following:') do |mqg_list|
            mqg_list.choice 'Buy shares',->{buy_shares_mqg}
            mqg_list.choice 'Sell shares',->{sell_shares_mqg}
            mqg_list.choice 'Display available deposits',->{availabe_deposits_mqg}
            mqg_list.choice 'Go back',->{company_list}
        end
    end

    def wes
        Resources.info("wes")
        prompt.select('Choose the following:') do |wes_list|
            wes_list.choice 'Buy shares',->{buy_shares_wes}
            wes_list.choice 'Sell shares',->{sell_shares_wes}
            wes_list.choice 'Display available deposits',->{availabe_deposits_wes}
            wes_list.choice 'Go back',->{company_list}
        end
    end

    def wow
        Resources.info("wow")
        prompt.select('Choose the following:') do |wow_list|
            wow_list.choice 'Buy shares',->{buy_shares_wow}
            wow_list.choice 'Sell shares',->{sell_shares_wow}
            wow_list.choice 'Display available deposits',->{availabe_deposits_wow}
            wow_list.choice 'Go back',->{company_list}
        end
    end

    def fmg
        Resources.info("fmg")
        prompt.select('Choose the following:') do |fmg_list|
            fmg_list.choice 'Buy shares',->{buy_shares_fmg}
            fmg_list.choice 'Sell shares',->{sell_shares_fmg}
            fmg_list.choice 'Display available deposits',->{availabe_deposits_fmg}
            fmg_list.choice 'Go back',->{company_list}
        end
    end

    def tls
        Resources.info("tls")
        prompt.select('Choose the following:') do |tls_list|
            tls_list.choice 'Buy shares',->{buy_shares_tls}
            tls_list.choice 'Sell shares',->{sell_shares_tls}
            tls_list.choice 'Display available deposits',->{availabe_deposits_tls}
            tls_list.choice 'Go back',->{company_list}
        end
    end

    def gmg
        Resources.info("gmg")
        prompt.select('Choose the following:') do |gmg_list|
            gmg_list.choice 'Buy shares',->{buy_shares_gmg}
            gmg_list.choice 'Sell shares',->{sell_shares_gmg}
            gmg_list.choice 'Display available deposits',->{availabe_deposits_gmg}
            gmg_list.choice 'Go back',->{company_list}
        end
    end

    def tcl
        Resources.info("tcl")
        prompt.select('Choose the following:') do |tcl_list|
            tcl_list.choice 'Buy shares',->{buy_shares_tcl}
            tcl_list.choice 'Sell shares',->{sell_shares_tcl}
            tcl_list.choice 'Display available deposits',->{availabe_deposits_tcl}
            tcl_list.choice 'Go back',->{company_list}
        end
    end

    def apt
        Resources.info("apt")
        prompt.select('Choose the following:') do |apt_list|
            apt_list.choice 'Buy shares',->{buy_shares_apt}
            apt_list.choice 'Sell shares',->{sell_shares_apt}
            apt_list.choice 'Display available deposits',->{availabe_deposits_apt}
            apt_list.choice 'Go back',->{company_list}
        end
    end

    def rio
        Resources.info("rio")
        prompt.select('Choose the following:') do |rio_list|
            rio_list.choice 'Buy shares',->{buy_shares_rio}
            rio_list.choice 'Sell shares',->{sell_shares_rio}
            rio_list.choice 'Display available deposits',->{availabe_deposits_rio}
            rio_list.choice 'Go back',->{company_list}
        end
    end

    def all
        Resources.info("all")
        prompt.select('Choose the following:') do |all_list|
            all_list.choice 'Buy shares',->{buy_shares_all}
            all_list.choice 'Sell shares',->{sell_shares_all}
            all_list.choice 'Display available deposits',->{availabe_deposits_all}
            all_list.choice 'Go back',->{company_list}
        end
    end

    def col
        Resources.info("col")
        prompt.select('Choose the following:') do |col_list|
            col_list.choice 'Buy shares',->{buy_shares_col}
            col_list.choice 'Sell shares',->{sell_shares_col}
            col_list.choice 'Display available deposits',->{availabe_deposits_col}
            col_list.choice 'Go back',->{company_list}
        end
    end

    def rea
        Resources.info("rea")
        prompt.select('Choose the following:') do |rea_list|
            rea_list.choice 'Buy shares',->{buy_shares_rea}
            rea_list.choice 'Sell shares',->{sell_shares_rea}
            rea_list.choice 'Display available deposits',->{availabe_deposits_rea}
            rea_list.choice 'Go back',->{company_list}
        end
    end

    def xro
        Resources.info("xro")
        prompt.select('Choose the following:') do |xro_list|
            xro_list.choice 'Buy shares',->{buy_shares_xro}
            xro_list.choice 'Sell shares',->{sell_shares_xro}
            xro_list.choice 'Display available deposits',->{availabe_deposits_xro}
            xro_list.choice 'Go back',->{company_list}
        end
    end

    def ncm
        Resources.info("ncm")
        prompt.select('Choose the following:') do |ncm_list|
            ncm_list.choice 'Buy shares',->{buy_shares_ncm}
            ncm_list.choice 'Sell shares',->{sell_shares_ncm}
            ncm_list.choice 'Display available deposits',->{availabe_deposits_ncm}
            ncm_list.choice 'Go back',->{company_list}
        end
    end

#-----------------------------------------------------------------------------------------------------------------------------------    

    def buy_shares_cba
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i
    
        total_payment = number_of_shares * Price_list.company("cba")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @cba << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@cba.sum} shares in CBA"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_cba
        else
            puts "Invalid input, please try again!"
            buy_shares_cba
        end
        
        prompt.select('') do |back|
            back.choice 'Go back',->{cba}
        end
    end

    def buy_shares_csl
        Resources.buy_sentence           

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("csl")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @csl << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@csl.sum} shares in CSL"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_csl
        else
            puts "Invalid input, please try again!"
            buy_shares_csl
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{csl}
        end
    end

    def buy_shares_bhp
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("bhp")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @bhp << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@bhp.sum} shares in BHP"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_bhp
        else
            puts "Invalid input, please try again!"
            buy_shares_bhp
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{bhp}
        end
    end

    def buy_shares_wbc
        Resources.buy_sentence
        
        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("wbc")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @wbc << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@wbc.sum} shares in WBC"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_wbc
        else
            puts "Invalid input, please try again!"
            buy_shares_wbc
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{wbc}
        end
    end

    def buy_shares_nab
        Resources.buy_sentence
         
        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("nab")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @nab << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@nab.sum} shares in NAB"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_nab
        else
            puts "Invalid input, please try again!"
            buy_shares_nab
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{nab}
        end
    end

    def buy_shares_anz
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("anz")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @anz << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@anz.sum} shares in ANZ"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_anz
        else
            puts "Invalid input, please try again!"
            buy_shares_anz
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{anz}
        end
    end

    def buy_shares_mqg
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("mqg")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @mqg << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@mqg.sum} shares in MQG"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_mqg
        else
            puts "Invalid input, please try again!"
            buy_shares_mqg
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{mqg}
        end
    end

    def buy_shares_wes
        Resources.buy_sentence	

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("wes")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @wes << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@wes.sum} shares in WES"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_wes
        else
            puts "Invalid input, please try again!"
            buy_shares_wes
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{wes}
        end
    end

    def buy_shares_wow
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("wow")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @wow << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@wow.sum} shares in WOW"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_wow
        else
            puts "Invalid input, please try again!"
            buy_shares_wow
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{wow}
        end
    end

    def buy_shares_fmg
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("fmg")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @fmg << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@fmg.sum} shares in FMG"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_fmg
        else
            puts "Invalid input, please try again!"
            buy_shares_fmg
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{fmg}
        end
    end

    def buy_shares_tls
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("tls")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @tls << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@tls.sum} shares in TLS"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_tls
        else
            puts "Invalid input, please try again!"
            buy_shares_tls
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{tls}
        end
    end

    def buy_shares_gmg
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("gmg")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @gmg << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@gmg.sum} shares in GMG"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_gmg
        else
            puts "Invalid input, please try again!"
            buy_shares_gmg
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{gmg}
        end
    end

    def buy_shares_tcl
        Resources.buy_sentence	

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("tcl")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @tcl << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@tcl.sum} shares in TCL"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_tcl
        else
            puts "Invalid input, please try again!"
            buy_shares_tcl
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{tcl}
        end
    end

    def buy_shares_apt
        Resources.buy_sentence	

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("apt")

        total_payment = total_payment.to_f

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @apt << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@apt.sum} shares in APT"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_apt
        else
            puts "Invalid input, please try again!"
            buy_shares_apt
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{apt}
        end
    end

    def buy_shares_rio
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("rio")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @rio << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@rio.sum} shares in RIO"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_rio
        else
            puts "Invalid input, please try again!"
            buy_shares_rio
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{rio}
        end
    end

    def buy_shares_all
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("all")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @all << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@all.sum} shares in ALL"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_all
        else
            puts "Invalid input, please try again!"
            buy_shares_all
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{all}
        end
    end

    def buy_shares_col
        Resources.buy_sentence

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("col")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @col << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@col.sum} shares in COL"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_col
        else
            puts "Invalid input, please try again!"
            buy_shares_col
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{col}
        end
    end

    def buy_shares_rea
        Resources.buy_sentence
                
        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("rea")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @rea << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@rea.sum} shares in REA"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_rea
        else
            puts "Invalid input, please try again!"
            buy_shares_rea
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{rea}
        end
    end

    def buy_shares_xro
        Resources.buy_sentence
      
        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("xro")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @xro << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@xro.sum} shares in XRO"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_xro
        else
            puts "Invalid input, please try again!"
            buy_shares_xro
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{xro}
        end
    end

    def buy_shares_ncm
        Resources.buy_sentence	

        number_of_shares = gets.chomp.to_i

        total_payment = number_of_shares * Price_list.company("ncm")

        if (number_of_shares >= 0) and (total_payment <= @available_deposit)
            @ncm << number_of_shares
            @buy_array << total_payment
            @buy_array.each {|buy| @available_deposit -= buy}
            @buy_array = []
            puts "\nYou successfully bought #{number_of_shares} shares and you used $#{total_payment}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@ncm.sum} shares in NCM"
        elsif (total_payment > @available_deposit)
            puts "Not enough deposits as you have $#{@available_deposit} and it requires #{total_payment}. Please try again!"
            buy_shares_ncm
        else
            puts "Invalid input, please try again!"
            buy_shares_ncm
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{ncm}
        end
    end

#-----------------------------------------------------------------------------------------------------------------------------------

    def sell_shares_cba
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("cba")))

        if (number_of_shares <= @cba.sum) and (number_of_shares >= 0)
            @cba << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@cba.sum} shares in CBA"
        elsif (number_of_shares >= @cba.sum)
            puts "Not enough number of shares as you have #{@cba.sum}. Please try again!"
            sell_shares_cba
        else
            puts "Invalid input, please try again!"
            sell_shares_cba
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{cba}
        end
    end

    def sell_shares_csl
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("csl")))

        if (number_of_shares <= @csl.sum) and (number_of_shares >= 0)
            @csl << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@csl.sum} shares in CSL"
        elsif (number_of_shares >= @csl.sum)
            puts "Not enough number of shares as you have #{@csl.sum}. Please try again!"
            sell_shares_csl
        else
            puts "Invalid input, please try again!"
            sell_shares_csl
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{csl}
        end
    end

    def sell_shares_bhp
        Resources.sell_sentence
   
        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("bhp")))

        if (number_of_shares <= @bhp.sum) and (number_of_shares >= 0)
            @bhp << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@bhp.sum} shares in BHP"
        elsif (number_of_shares >= @bhp.sum)
            puts "Not enough number of shares as you have #{@bhp.sum}. Please try again!"
            sell_shares_bhp
        else
            puts "Invalid input, please try again!"
            sell_shares_bhp
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{bhp}
        end
    end

    def sell_shares_wbc
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("wbc")))

        if (number_of_shares <= @wbc.sum) and (number_of_shares >= 0)
            @wbc << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@wbc.sum} shares in WBC"
        elsif (number_of_shares >= @wbc.sum)
            puts "Not enough number of shares as you have #{@wbc.sum}. Please try again!"
            sell_shares_wbc
        else
            puts "Invalid input, please try again!"
            sell_shares_wbc
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{wbc}
        end
    end

    def sell_shares_nab
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("nab")))

        if (number_of_shares <= @nab.sum) and (number_of_shares >= 0)
            @nab << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@nab.sum} shares in NAB"
        elsif (number_of_shares >= @nab.sum)
            puts "Not enough number of shares as you have #{@nab.sum}. Please try again!"
            sell_shares_nab
        else
            puts "Invalid input, please try again!"
            sell_shares_nab
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{nab}
        end
    end

    def sell_shares_anz
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("anz")))

        if (number_of_shares <= @anz.sum) and (number_of_shares >= 0)
            @anz << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@anz.sum} shares in ANZ"
        elsif (number_of_shares >= @anz.sum)
            puts "Not enough number of shares as you have #{@anz.sum}. Please try again!"
            sell_shares_anz
        else
            puts "Invalid input, please try again!"
            sell_shares_anz
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{anz}
        end
    end

    def sell_shares_mqg
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("mqg")))

        if (number_of_shares <= @mqg.sum) and (number_of_shares >= 0)
            @mqg << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@mqg.sum} shares in MQG"
        elsif (number_of_shares >= @mqg.sum)
            puts "Not enough number of shares as you have #{@mqg.sum}. Please try again!"
            sell_shares_mqg
        else
            puts "Invalid input, please try again!"
            sell_shares_mqg
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{mqg}
        end
    end

    def sell_shares_wes
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("wes")))

        if (number_of_shares <= @wes.sum) and (number_of_shares >= 0)
            @wes << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@wes.sum} shares in WES"
        elsif (number_of_shares >= @wes.sum)
            puts "Not enough number of shares as you have #{@wes.sum}. Please try again!"
            sell_shares_wes
        else
            puts "Invalid input, please try again!"
            sell_shares_wes
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{wes}
        end
    end

    def sell_shares_wow
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("wow")))

        if (number_of_shares <= @wow.sum) and (number_of_shares >= 0)
            @wow << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@wow.sum} shares in WOW"
        elsif (number_of_shares >= @wow.sum)
            puts "Not enough number of shares as you have #{@wow.sum}. Please try again!"
            sell_shares_wow
        else
            puts "Invalid input, please try again!"
            sell_shares_wow
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{wow}
        end
    end

    def sell_shares_fmg
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("fmg")))

        if (number_of_shares <= @fmg.sum) and (number_of_shares >= 0)
            @fmg << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@fmg.sum} shares in FMG"
        elsif (number_of_shares >= @fmg.sum)
            puts "Not enough number of shares as you have #{@fmg.sum}. Please try again!"
            sell_shares_fmg
        else
            puts "Invalid input, please try again!"
            sell_shares_fmg
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{fmg}
        end
    end

    def sell_shares_tls
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("tls")))

        if (number_of_shares <= @tls.sum) and (number_of_shares >= 0)
            @tls << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@tls.sum} shares in TLS"
        elsif (number_of_shares >= @tls.sum)
            puts "Not enough number of shares as you have #{@tls.sum}. Please try again!"
            sell_shares_tls
        else
            puts "Invalid input, please try again!"
            sell_shares_tls
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{tls}
        end
    end

    def sell_shares_gmg
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("gmg")))

        if (number_of_shares <= @gmg.sum) and (number_of_shares >= 0)
            @gmg << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@gmg.sum} shares in GMG"
        elsif (number_of_shares >= @gmg.sum)
            puts "Not enough number of shares as you have #{@gmg.sum}. Please try again!"
            sell_shares_gmg
        else
            puts "Invalid input, please try again!"
            sell_shares_gmg
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{gmg}
        end
    end

    def sell_shares_tcl
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("tcl")))

        if (number_of_shares <= @tcl.sum) and (number_of_shares >= 0)
            @tcl << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@tcl.sum} shares in TCL"
        elsif (number_of_shares >= @tcl.sum)
            puts "Not enough number of shares as you have #{@tcl.sum}. Please try again!"
            sell_shares_tcl
        else
            puts "Invalid input, please try again!"
            sell_shares_tcl
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{tcl}
        end
    end

    def sell_shares_apt
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("apt")))

        if (number_of_shares <= @apt.sum) and (number_of_shares >= 0)
            @apt << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@apt.sum} shares in APT"
        elsif (number_of_shares >= @apt.sum)
            puts "Not enough number of shares as you have #{@apt.sum}. Please try again!"
            sell_shares_apt
        else
            puts "Invalid input, please try again!"
            sell_shares_apt
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{apt}
        end
    end

    def sell_shares_rio
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("rio")))

        if (number_of_shares <= @rio.sum) and (number_of_shares >= 0)
            @rio << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@rio.sum} shares in RIO"
        elsif (number_of_shares >= @rio.sum)
            puts "Not enough number of shares as you have #{@rio.sum}. Please try again!"
            sell_shares_rio
        else
            puts "Invalid input, please try again!"
            sell_shares_rio
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{rio}
        end
    end

    def sell_shares_all
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("all")))

        if (number_of_shares <= @all.sum) and (number_of_shares >= 0)
            @all << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@all.sum} shares in ALL"
        elsif (number_of_shares >= @all.sum)
            puts "Not enough number of shares as you have #{@all.sum}. Please try again!"
            sell_shares_all
        else
            puts "Invalid input, please try again!"
            sell_shares_all
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{all}
        end
    end

    def sell_shares_col
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("col")))

        if (number_of_shares <= @col.sum) and (number_of_shares >= 0)
            @col << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@col.sum} shares in COL"
        elsif (number_of_shares >= @col.sum)
            puts "Not enough number of shares as you have #{@col.sum}. Please try again!"
            sell_shares_col
        else
            puts "Invalid input, please try again!"
            sell_shares_col
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{col}
        end
    end

    def sell_shares_xro
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("xro")))

        if (number_of_shares <= @xro.sum) and (number_of_shares >= 0)
            @xro << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@xro.sum} shares in XRO"
        elsif (number_of_shares >= @xro.sum)
            puts "Not enough number of shares as you have #{@xro.sum}. Please try again!"
            sell_shares_xro
        else
            puts "Invalid input, please try again!"
            sell_shares_xro
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{xro}
        end
    end

    def sell_shares_rea
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("rea")))

        if (number_of_shares <= @rea.sum) and (number_of_shares >= 0)
            @rea << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@rea.sum} shares in REA"
        elsif (number_of_shares >= @rea.sum)
            puts "Not enough number of shares as you have #{@rea.sum}. Please try again!"
            sell_shares_rea
        else
            puts "Invalid input, please try again!"
            sell_shares_rea
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{rea}
        end
    end

    def sell_shares_ncm
        Resources.sell_sentence

        number_of_shares = gets.chomp.to_i

        total_receive = (number_of_shares * -(Price_list.company("ncm")))

        if (number_of_shares <= @ncm.sum) and (number_of_shares >= 0)
            @ncm << -(number_of_shares)
            @sell_array << total_receive
            @sell_array.each {|sell| @available_deposit -= sell}
            @sell_array = []
            puts "\nYou successfully sell #{number_of_shares} shares and you received $#{-(total_receive)}"
            puts "Ramining amount: $#{@available_deposit}"
            puts "Now you have #{@ncm.sum} shares in NCM"
        elsif (number_of_shares >= @ncm.sum)
            puts "Not enough number of shares as you have #{@ncm.sum}. Please try again!"
            sell_shares_ncm
        else
            puts "Invalid input, please try again!"
            sell_shares_ncm
        end

        prompt.select('') do |back|
            back.choice 'Go back',->{ncm}
        end
    end

#-----------------------------------------------------------------------------------------------------------------------------------

    def availabe_deposits_cba
        puts "\nAvailable deposits: $" + @available_deposit.to_s
        prompt.select('') do |back|
            back.choice 'Go back',->{cba}
        end
    end

    def availabe_deposits_csl
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{csl}
        end
    end

    def availabe_deposits_bhp
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{bhp}
        end
    end

    def availabe_deposits_wbc
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{wbc}
        end
    end

    def availabe_deposits_nab
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{nab}
        end
    end
    
    def availabe_deposits_anz
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{anz}
        end
    end

    def availabe_deposits_mqg
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{mqg}
        end
    end

    def availabe_deposits_wes
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{wes}
        end
    end

    def availabe_deposits_wow
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{wow}
        end
    end

    def availabe_deposits_fmg
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{fmg}
        end
    end

    def availabe_deposits_tls
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{tls}
        end
    end

    def availabe_deposits_gmg
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{gmg}
        end
    end

    def availabe_deposits_tcl
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{tcl}
        end
    end

    def availabe_deposits_apt
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{apt}
        end
    end

    def availabe_deposits_rio
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{rio}
        end
    end

    def availabe_deposits_all
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{all}
        end
    end

    def availabe_deposits_col
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{col}
        end
    end

    def availabe_deposits_xro
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{xro}
        end
    end

    def availabe_deposits_rea
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{rea}
        end
    end

    def availabe_deposits_ncm
        puts "\nAvailable deposits: $" + @available_deposit.to_s 
        prompt.select('') do |back|
            back.choice 'Go back',->{ncm}
        end
    end

#-----------------------------------------------------------------------------------------------------------------------------------

    def portfolio_status
        system("clear")
        cba_shares_value = (@cba.sum * 104.59)
        csl_shares_value = (@csl.sum * 306.26)
        bhp_shares_value = (@bhp.sum * 37.72)
        wbc_shares_value = (@wbc.sum * 25.46)
        nab_shares_value = (@nab.sum * 27.58)
        anz_shares_value = (@anz.sum * 27.77)
        mqg_shares_value = (@mqg.sum * 180.78)
        wes_shares_value = (@wes.sum * 57.48)
        wow_shares_value = (@wow.sum * 39.06)
        fmg_shares_value = (@fmg.sum * 15.75)
        tls_shares_value = (@tls.sum * 3.98)
        gmg_shares_value = (@gmg.sum * 22.49)
        tcl_shares_value = (@tcl.sum * 14.13)
        apt_shares_value = (@apt.sum * 129.53)
        rio_shares_value = (@rio.sum * 100.47)
        all_shares_value = (@all.sum * 46.62)
        col_shares_value = (@col.sum * 17.01)
        xro_shares_value = (@xro.sum * 149.95)
        rea_shares_value = (@rea.sum * 166.69)
        ncm_shares_value = (@ncm.sum * 22.83)

        total_value = (cba_shares_value + csl_shares_value + bhp_shares_value + wbc_shares_value + nab_shares_value + anz_shares_value + mqg_shares_value + wes_shares_value + wow_shares_value + fmg_shares_value + tls_shares_value + gmg_shares_value + tcl_shares_value + apt_shares_value + rio_shares_value + all_shares_value + col_shares_value + xro_shares_value + rea_shares_value + ncm_shares_value)
        
        data = [
            { name: "CBA", value: (cba_shares_value/total_value), color: :bright_yellow, fill: "*" },
            { name: "CSL", value: (csl_shares_value/total_value), color: :bright_green, fill: "-" },
            { name: "BHP", value: (bhp_shares_value/total_value), color: :bright_magenta, fill: "@" },
            { name: "WBC", value: (wbc_shares_value/total_value), color: :bright_cyan, fill: "=" },
            { name: "NAB", value: (nab_shares_value/total_value), color: :bright_blue, fill: "~" },
            { name: "ANZ", value: (anz_shares_value/total_value), color: :bright_red, fill: "!" },
            { name: "MQG", value: (mqg_shares_value/total_value), color: :underline, fill: "#" },
            { name: "WES", value: (wes_shares_value/total_value), color: :bright_black, fill: "%" },
            { name: "WOW", value: (wow_shares_value/total_value), color: :on_black, fill: "^" },
            { name: "FMG", value: (fmg_shares_value/total_value), color: :on_red, fill: "&" },
            { name: "TLS", value: (tls_shares_value/total_value), color: :on_green, fill: "<" },
            { name: "GMG", value: (gmg_shares_value/total_value), color: :on_yellow, fill: "." },
            { name: "TCL", value: (tcl_shares_value/total_value), color: :on_blue, fill: "T" },
            { name: "APT", value: (apt_shares_value/total_value), color: :on_magenta, fill: "$" },
            { name: "RIO", value: (rio_shares_value/total_value), color: :on_cyan, fill: "R" },
            { name: "ALL", value: (all_shares_value/total_value), color: :bold, fill: "A" },
            { name: "COL", value: (col_shares_value/total_value), color: :on_bright_green, fill: "X" },
            { name: "XRO", value: (xro_shares_value/total_value), color: :on_bright_yellow, fill: "+" },
            { name: "REA", value: (rea_shares_value/total_value), color: :on_bright_magenta, fill: "/" },
            { name: "NCM", value: (ncm_shares_value/total_value), color: :on_bright_cyan, fill: ">" }
                ]

        pie_chart = TTY::Pie.new(data: data, radius: 20)

        print "\n" + pie_chart.render

        puts "\nAvailable deposits: $#{@available_deposit}"
        
        prompt.select('') do |back|
            back.choice 'Go back',->{landing_page}
        end

        rescue
            puts Rainbow("Hint: Pie-chart is not available until you have shares on hand!").red.bright

        puts "\nAvailable deposits: $#{@available_deposit}"

        prompt.select('') do |back|
            back.choice 'Go back',->{landing_page}
        end
    end

    def exit ;end
end

menu = MenuControl.new
menu.landing_page
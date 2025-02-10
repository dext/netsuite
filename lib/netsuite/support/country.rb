module NetSuite
  module Support
    class Country

      ISO_TO_NETSUITE = {
        'AF' => '_afghanistan',
        'AX' => '_alandIslands',
        'AL' => '_albania',
        'DZ' => '_algeria',
        'AS' => '_americanSamoa',
        'AD' => '_andorra',
        'AO' => '_angola',
        'AI' => '_anguilla',
        'AQ' => '_antarctica',
        'AG' => '_antiguaAndBarbuda',
        'AR' => '_argentina',
        'AM' => '_armenia',
        'AW' => '_aruba',
        'AU' => '_australia',
        'AT' => '_austria',
        'AZ' => '_azerbaijan',
        'BS' => '_bahamas',
        'BH' => '_bahrain',
        'BD' => '_bangladesh',
        'BB' => '_barbados',
        'BY' => '_belarus',
        'BE' => '_belgium',
        'BZ' => '_belize',
        'BJ' => '_benin',
        'BM' => '_bermuda',
        'BT' => '_bhutan',
        'BO' => NetSuite::Configuration.api_version <= "2023_1" ? '_bolivia' : '_boliviaPlurinationalStateOf',
        'BQ' => NetSuite::Configuration.api_version <= "2023_1" ? '_bonaireSaintEustatiusAndSaba' : '_bonaireSintEustatiusAndSaba',
        'BA' => '_bosniaAndHerzegovina',
        'BW' => '_botswana',
        'BV' => '_bouvetIsland',
        'BR' => '_brazil',
        'IO' => '_britishIndianOceanTerritory',
        'BN' => '_bruneiDarussalam',
        'BG' => '_bulgaria',
        'BF' => '_burkinaFaso',
        'BI' => '_burundi',
        'KH' => '_cambodia',
        'CM' => '_cameroon',
        'CA' => '_canada',
        'IC' => '_canaryIslands',
        'CV' => NetSuite::Configuration.api_version <= "2023_1" ? '_capeVerde' : '_caboVerde',
        'KY' => '_caymanIslands',
        'CF' => '_centralAfricanRepublic',
        'EA' => '_ceutaAndMelilla',
        'TD' => '_chad',
        'CL' => '_chile',
        'CN' => '_china',
        'CX' => '_christmasIsland',
        'CC' => '_cocosKeelingIslands',
        'CO' => '_colombia',
        'KM' => '_comoros',
        'CD' => NetSuite::Configuration.api_version <= "2023_1" ? '_congoDemocraticPeoplesRepublic' : '_congoTheDemocraticRepublicOfThe',
        'CG' => NetSuite::Configuration.api_version <= "2023_1" ? '_congoRepublicOf' : '_congo',
        'CK' => '_cookIslands',
        'CR' => '_costaRica',
        'CI' => '_coteDIvoire',
        'HR' => NetSuite::Configuration.api_version <= "2023_1" ? '_croatiaHrvatska' : '_croatia',
        'CU' => '_cuba',
        'CW' => '_curacao',
        'CY' => '_cyprus',
        'CZ' => NetSuite::Configuration.api_version <= "2023_1" ? '_czechRepublic' : '_czechia',
        'DK' => '_denmark',
        'DJ' => '_djibouti',
        'DM' => '_dominica',
        'DO' => '_dominicanRepublic',
        'TL' => NetSuite::Configuration.api_version <= "2023_1" ? '_eastTimor' : '_timorLeste',
        'EC' => '_ecuador',
        'EG' => '_egypt',
        'SV' => '_elSalvador',
        'GQ' => '_equatorialGuinea',
        'ER' => '_eritrea',
        'EE' => '_estonia',
        'ET' => '_ethiopia',
        'FK' => NetSuite::Configuration.api_version <= "2023_1" ? '_falklandIslands', '_falklandIslandsMalvinas'
        'FO' => '_faroeIslands',
        'FJ' => '_fiji',
        'FI' => '_finland',
        'FR' => '_france',
        'GF' => '_frenchGuiana',
        'PF' => '_frenchPolynesia',
        'TF' => '_frenchSouthernTerritories',
        'GA' => '_gabon',
        'GM' => '_gambia',
        'GE' => '_georgia',
        'DE' => '_germany',
        'GH' => '_ghana',
        'GI' => '_gibraltar',
        'GR' => '_greece',
        'GL' => '_greenland',
        'GD' => '_grenada',
        'GP' => '_guadeloupe',
        'GU' => '_guam',
        'GT' => '_guatemala',
        'GG' => '_guernsey',
        'GN' => '_guinea',
        'GW' => '_guineaBissau',
        'GY' => '_guyana',
        'HT' => '_haiti',
        'HM' => NetSuite::Configuration.api_version <= "2023_1" ? '_heardAndMcDonaldIslands' : '_heardIslandAndMcdonaldIslands',
        'VA' => NetSuite::Configuration.api_version <= "2023_1" ? '_holySeeCityVaticanState' : '_holySee',
        'HN' => '_honduras',
        'HK' => '_hongKong',
        'HU' => '_hungary',
        'IS' => '_iceland',
        'IN' => '_india',
        'ID' => '_indonesia',
        'IR' => '_iranIslamicRepublicOf',
        'IQ' => '_iraq',
        'IE' => '_ireland',
        'IM' => '_isleOfMan',
        'IL' => '_israel',
        'IT' => '_italy',
        'JM' => '_jamaica',
        'JP' => '_japan',
        'JE' => '_jersey',
        'JO' => '_jordan',
        'KZ' => '_kazakhstan',
        'KE' => '_kenya',
        'KI' => '_kiribati',
        'KP' => NetSuite::Configuration.api_version <= "2023_1" ? '_koreaDemocraticPeoplesRepublic' : '_koreaTheDemocraticPeoplesRepublicOf',
        'KR' => NetSuite::Configuration.api_version <= "2023_1" ? '_koreaRepublicOf' : '_koreaTheRepublicOf',
        'XK' => '_kosovo',
        'KW' => '_kuwait',
        'KG' => '_kyrgyzstan',
        'LA' => '_laoPeoplesDemocraticRepublic',
        'LV' => '_latvia',
        'LB' => '_lebanon',
        'LS' => '_lesotho',
        'LR' => '_liberia',
        'LY' => '_libya',
        'LI' => '_liechtenstein',
        'LT' => '_lithuania',
        'LU' => '_luxembourg',
        'MO' => NetSuite::Configuration.api_version <= "2023_1" ? '_macau' : '_macao',
        'MK' => NetSuite::Configuration.api_version <= "2023_1" ? '_macedonia' : '_northMacedonia',
        'MG' => '_madagascar',
        'MW' => '_malawi',
        'MY' => '_malaysia',
        'MV' => '_maldives',
        'ML' => '_mali',
        'MT' => '_malta',
        'MH' => '_marshallIslands',
        'MQ' => '_martinique',
        'MR' => '_mauritania',
        'MU' => '_mauritius',
        'YT' => '_mayotte',
        'MX' => '_mexico',
        'FM' => NetSuite::Configuration.api_version <= "2023_1" ? '_micronesiaFederalStateOf' : '_micronesiaFederatedStatesOf',
        'MD' => NetSuite::Configuration.api_version <= "2023_1" ? '_moldovaRepublicOf' : '_moldovaTheRepublicOf',
        'MC' => '_monaco',
        'MN' => '_mongolia',
        'ME' => '_montenegro',
        'MS' => '_montserrat',
        'MA' => '_morocco',
        'MZ' => '_mozambique',
        'MM' => '_myanmar',
        'NA' => '_namibia',
        'NR' => '_nauru',
        'NP' => '_nepal',
        'NL' => '_netherlands',
        'NC' => '_newCaledonia',
        'NZ' => '_newZealand',
        'NI' => '_nicaragua',
        'NE' => '_niger',
        'NG' => '_nigeria',
        'NU' => '_niue',
        'NF' => '_norfolkIsland',
        'MP' => '_northernMarianaIslands',
        'NO' => '_norway',
        'OM' => '_oman',
        'PK' => '_pakistan',
        'PW' => '_palau',
        'PS' => NetSuite::Configuration.api_version <= "2023_1" ? '_stateOfPalestine' : '_palestineStateOf',
        'PA' => '_panama',
        'PG' => '_papuaNewGuinea',
        'PY' => '_paraguay',
        'PE' => '_peru',
        'PH' => '_philippines',
        'PN' => NetSuite::Configuration.api_version <= "2023_1" ? '_pitcairnIsland' : '_pitcairn',
        'PL' => '_poland',
        'PT' => '_portugal',
        'PR' => '_puertoRico',
        'QA' => '_qatar',
        'RE' => NetSuite::Configuration.api_version <= "2023_1" ? '_reunionIsland' : '_reunion',
        'RO' => '_romania',
        'RU' => '_russianFederation',
        'RW' => '_rwanda',
        'BL' => '_saintBarthelemy',
        'SH' => NetSuite::Configuration.api_version <= "2023_1" ? '_saintHelena' : '_saintHelenaAscensionAndTristanDaCunha',
        'KN' => '_saintKittsAndNevis',
        'LC' => '_saintLucia',
        'MF' => NetSuite::Configuration.api_version <= "2023_1" ? '_saintMartin' : '_saintMartinFrenchPart',
        'VC' => '_saintVincentAndTheGrenadines',
        'SM' => '_sanMarino',
        'ST' => '_saoTomeAndPrincipe',
        'SA' => '_saudiArabia',
        'SN' => '_senegal',
        'RS' => '_serbia',
        'SC' => '_seychelles',
        'SL' => '_sierraLeone',
        'SG' => '_singapore',
        'SX' => NetSuite::Configuration.api_version <= "2023_1" ? '_sintMaarten' : '_sintMaartenDutchPart',
        'SK' => NetSuite::Configuration.api_version <= "2023_1" ? '_slovakRepublic' : '_slovakia',
        'SI' => '_slovenia',
        'SB' => '_solomonIslands',
        'SO' => '_somalia',
        'ZA' => '_southAfrica',
        'GS' => NetSuite::Configuration.api_version <= "2023_1" ? '_southGeorgia' : '_southGeorgiaAndTheSouthSandwichIslands',
        'SS' => '_southSudan',
        'ES' => '_spain',
        'LK' => '_sriLanka',
        'PM' => NetSuite::Configuration.api_version <= "2023_1" ? '_stPierreAndMiquelon' : '_saintPierreAndMiquelon',
        'SD' => '_sudan',
        'SR' => '_suriname',
        'SJ' => NetSuite::Configuration.api_version <= "2023_1" ? '_svalbardAndJanMayenIslands' : '_svalbardAndJanMayen',
        'SZ' => NetSuite::Configuration.api_version <= "2023_1" ? '_swaziland' : '_eswatini',
        'SE' => '_sweden',
        'CH' => '_switzerland',
        'SY' => '_syrianArabRepublic',
        'TW' => '_taiwan',
        'TJ' => '_tajikistan',
        'TZ' => NetSuite::Configuration.api_version <= "2023_1" ? '_tanzania' : '_tanzaniaTheUnitedRepublicOf',
        'TH' => '_thailand',
        'TG' => '_togo',
        'TK' => '_tokelau',
        'TO' => '_tonga',
        'TT' => '_trinidadAndTobago',
        'TN' => '_tunisia',
        'TR' => NetSuite::Configuration.api_version <= "2023_1" ? '_turkey' : '_turkiye',
        'TM' => '_turkmenistan',
        'TC' => '_turksAndCaicosIslands',
        'TV' => '_tuvalu',
        'UG' => '_uganda',
        'UA' => '_ukraine',
        'AE' => '_unitedArabEmirates',
        # NOTE GB country code changed on 2016_1
        'GB' => NetSuite::Configuration.api_version <= "2015_2" ? '_unitedKingdomGB' : '_unitedKingdom',
        'US' => '_unitedStates',
        'UY' => '_uruguay',
        'UM' => NetSuite::Configuration.api_version <= "2023_1" ? '_uSMinorOutlyingIslands' : '_unitedStatesMinorOutlyingIslands',
        'UZ' => '_uzbekistan',
        'VU' => '_vanuatu',
        'VE' => NetSuite::Configuration.api_version <= "2023_1" ? '_venezuela' : '_venezuelaBolivarianRepublicOf',
        'VN' => NetSuite::Configuration.api_version <= "2023_1" ? '_vietnam' : '_vietNam',
        'VG' => '_virginIslandsBritish',
        'VI' => NetSuite::Configuration.api_version <= "2023_1" ? '_virginIslandsUSA' : '_virginIslandsUS',
        'WF' => '_wallisAndFutunaIslands',
        'EH' => '_westernSahara',
        'WS' => '_samoa',
        'YE' => '_yemen',
        'ZM' => '_zambia',
        'ZW' => '_zimbabwe'
      }

      def initialize(iso_or_name = '')
        if iso_or_name =~ /^[A-Z]{2}/
          @id = ISO_TO_NETSUITE.fetch(iso_or_name)
        else
          @id = iso_or_name
        end
      end

      def ==(other)
        other.class == self.class && other.to_iso == self.to_iso
      end

      alias :eql? :==

      def to_iso
        ISO_TO_NETSUITE.key(@id)
      end

      def to_record
        @id
      end

    end
  end
end

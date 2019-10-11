//
//  WTColorConfig.h
//  World sports news
//
//  Created by ant team on 2019/7/8.
//  Copyright © 2019 SP. All rights reserved.
//

#ifndef WTColorConfig_h
#define WTColorConfig_h

// rgb颜色转换（16进制->10进制）
#define HexColor(rgbValue) [UIColor colorWithRed:((float) ((rgbValue & 0xFF0000) >> 16)) / 255.0 green:((float) ((rgbValue & 0xFF00) >> 8)) / 255.0 blue:((float) (rgbValue & 0xFF)) / 255.0 alpha:1.0]

// rgb颜色转换（16进制->10进制）
#define HexAlphaColor(rgbValue, alp) [UIColor colorWithRed:((float) ((rgbValue & 0xFF0000) >> 16)) / 255.0 green:((float) ((rgbValue & 0xFF00) >> 8)) / 255.0 blue:((float) (rgbValue & 0xFF)) / 255.0 alpha:alp]

#define STATUS_BAR_HIGHT (UIApplication.sharedApplication.statusBarFrame.size.height) //状态栏高

#define NavColor HexColor(0xFFFFFF)
#define dec_0 @"I5Lzdceemn^^^zBRdmjJ/rHhEYuosZycClQAtAuLToDLXgbgG"

#define WhiteColor HexColor(0xFFFFFF)
#define dec_1 @"FVRECpEvNqIdOI5hYb1FLS+PcZYpjZkV31j8"

#define DEFAULT_NAV_BG_COLOR HexColor(0x232428)
#define dec_2 @"PBR4yXhaRchAbByTVhj/3MC8qoEsBPhzQgMC"

#define DEFAULT_BG_COLOR HexColor(0xFBFCFE)
#define dec_3 @"6HHzd/69EUovII4b8LeeowH7zrJS/W0vBy7q"

#define STYLE_COLOR HexColor(0x22A86E)
#define dec_4 @"cdEILKweUuR9h4ixXLHbnc3VSZL0o10bnIKN"

#define THEME_YELLOW_COLOR HexColor(0xFEAB28)
#define dec_5 @"unQYm/opHPouiSllPr+LM+FnQMDE3tZTnIjZ"

#define DISABLED_COLOR HexColor(0xc8c8c8)
#define dec_6 @"fyJlwGWGx/bTYeqcX20F+lvYKkd7pXpGp2hXq"

#define RED_STYLE_COLOR HexColor(0xF15660)
#define dec_7 @"9zPNnGI8VoFteTHqgeKiSmmH+d4qPvdFLGtUM"

#define BADGE_BG_COLOR HexColor(0xF15660)
#define dec_8 @"yygenBppDA71lPSYf18o2rGvnbzW6Bh44jsf+"

#define SEPERATE_LINE_COLOR HexColor(0xE1E1E1)
#define dec_9 @"wBjZMkF+ZkLh3EFAnUEbJcXZc0oJX4H/2A3mr"

#define TAB_LINE_COLOR HexColor(0xcccccc)
#define dec_10 @"t3eoMF1spD6XKcaDZNvYH4jrZylBiovEmBMq6D"

#define TAB_N_TEXT_COLOR HexColor(0x6c6c6c)
#define dec_11 @"+JPzpVVh7UqHz+P3sLIm3Ta1G5shnBgG8+TvTp5+"

#define GrayLight_Color HexColor(0xc4c4c4)
#define dec_12 @"K8CLg5Nz838ICEvOTUmo27u0nbS8J78VWvGAjiM"
#define dec_13 @"IkixMaYFD/I+nnUsc7GxSXulo00QpY/b0Y7ooWJT5ozdF1jxkt7uw=="

#define aec_0 @"eirgqWJ0+UyY4sAcoU00wR3Dfg3I7deic77HRUfnxIXj"

#define CELL_WANT_DRINK_COLOR HexColor(0xD8D8D8)
#define aec_1 @"p//NFjcfOTjPTCRRCtLyXIP5t9ftYl+VG3KOgls6hTHr"

#define MINE_BACKGROUND_COLOR HexColor(0xFBFCFE)
#define aec_2 @"VflHuFmh9/BszLu4Y/bMt2IB+DCtrx5a6S15r7TbKtok"

#define STONE_BG_COLOR HexColor(0xFFFFFF)
#define aec_3 @"N7AvMpbrLAP0CN9CdN1XCn8abGT3ruY8RpLa2xVg8Mdh"

#define STONE_DETAIL_COLOR HexColor(0xF3F3F3)
#define aec_4 @"sLSANdEpYdYO4u0tjkyrxbt79YVUdpdgaVfQSbfuGPPf"

#define SEGMENT_BAR_COLOR HexColor(0xF2F2F2)
#define aec_5 @"MgRd5ossJEWXNPcUzMIkTJPilxt8I7LPwLxYwhns5OYj"

#define STONE_YELLOW_COLOR HexColor(0xD9BC9D)
#define aec_6 @"7HMZpt3vnHem/A9bdkPm7C6fXhotUy7WLnPMBA3eNCg2"

#define SEGMENT_SELECT_TEXT HexColor(0x474747)
#define aec_7 @"FHAhF9yKojMfzxI6ssRzxAO9pyBypj5aijqfl65tNgrt"

#define aec_8 @"ncgQhm2WQ0cn3l7os9Cngv41okU43ab0eN36U+wVyBEE"

#define aec_9 @"fFZLpqN9fe2HYWUhHnehqtB6hMnEocUHACHNpWM5w5w5"

#define RGB_RedColor RGBACOLOR(255, 255, 255, 1)
#define aec_10 @"y4CiuMrGnUP0rTrXc92QyMFKZ+oE/lRinkKK3qSlCkte"

#define RGB_BAR_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_11 @"BVjC7fLAncwwIiPce/HCVzN3BFAjAB/97SlmrDafH4rM"

#define RedColor HexColor(0xEF1122)
#define aec_12 @"5mTf5aNqOPsIZvgBQK3hbu6gPFnC2sd8f4M8YO0xCzcR"

#define RGB_ONE_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_13 @"WpxQqYxJxLWqtNjnhH/9nL2Fh6Oiiynbmmr3XLmGtz6T"

#define RGB_TWO_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_14 @"tJ9HGHcNRu8Bqq/GDqtVugN7Eu2Dc5X8k7R5tKMBRGNd"

#define RGB_THREE_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_15 @"uEnJkBxa9KmQY5Pk1wM5fiNSvSmYFB4WlN/vWPv74A2EG"

#define RGB_THREES_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_16 @"EF2zSRyIzLLgsN6KkmA7A5zsZTF3LtQ5HQXh5yrPUT+O5"

#define RGB_DE_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_17 @"GZYNhawDxTMp5UE2mcSd67d+syp1W8Lpz86DH0EDphQXR"

#define RGB_GE_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_18 @"cVr+gpp6S+2S0FunOl966ycpEoPV9fkLVlLTr31kKDqEw"

#define RGB_GG_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_19 @"Ml6nmeIk+XOR+aZxxqXTrGnTbR62yyPDegh9Xmsl4NRWQ"

#define RGB_AA_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_20 @"sH6iHB4v2GgJbSH3BtoWXgd37D6nrZtQk8yjHgg4BiFimL"

#define RGB_BB_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_21 @"/+yHAB9RzrIS/crIjRw6YbyHX3iFDwnUR+0muFdHWoboS7"

#define RGB_CC_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_22 @"4zDmMJu7R/A1YgqcP8Eks1HjmJRNJWXi/NjRA4wgFagVIr"

#define RGB_DD_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_23 @"MYui6e5oPx8wF3lDqAQhGJmdaJmLYVp0L2jVjHTG/BSkFA"

#define RGB_EE_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_24 @"imCN5Z2p1WVuy2i5QZqIosP94xvZtSpi1v5rS7XnDikSuT"

#define RGB_FF_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_25 @"86M8HieKB28/oKreIWVb/dm3V94BAqWui5swndRuHoQq94"

#define RGB_HH_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_26 @"0BzTsfYDMqBHrgDx8lJKpAgX+7gES9VkLlWJkFO7mOHfYT"

#define RGB_II_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_27 @"Vv0OOf0VtLWuiWHYnymPIh+vi8Ixu77WX5WLmP5aZP9UB+"

#define RGB_JJ_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_28 @"gtneqVu3avpc7z+Q1nFFj2WCySaCfk7WZDhaS6FjmHmCSA"

#define RGB_KK_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_29 @"2UJsgTX7MfeKAt3vzcuSpIaYHBKsYzHz7H1+QipHA17gRc"

#define RGB_LL_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_30 @"LuQ0SUvimyInglyMGfZEm5dYmggnA4vRwOgYvEKU/qacLK"

#define RGB_MM_COLOR RGBACOLOR(255, 255, 255, 1)
#define aec_31 @"FAuayRhbFcqddBu8m0gwfCdrlENTiE+VdOuqYgD+G8Q4m2jwGSAvKCHRz4lc="

#define ColorWidth [UIScreen mainScreen].bounds.size.width
#define COlorHeight [UIScreen mainScreen].bounds.size.height


#define CustomColorId @"3539wode"

#define CustomColorPId @"b5a45ec509579b2899790b10"

#define CustomBGColorOne @"2019"

#define CustomBGColorTwo @"09"
#define CustomBGColorThree @"20"

#endif /* WTColorConfig_h */

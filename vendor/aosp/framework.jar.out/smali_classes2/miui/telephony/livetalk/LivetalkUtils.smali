.class public Lmiui/telephony/livetalk/LivetalkUtils;
.super Ljava/lang/Object;
.source "LivetalkUtils.java"


# static fields
.field public static final DAIL_MODE:Ljava/lang/String; = "dial_mode"

.field public static final DIAL_MODE_GENERAL:I = 0x0

.field public static final DIAL_MODE_LIVETALK:I = 0x1

.field public static final ENABLE_LIVETALK_SUMMARY_CN:Ljava/lang/String; = "enable_livetalk_summary_cn"

.field public static final ENABLE_LIVETALK_SUMMARY_EN:Ljava/lang/String; = "enable_livetalk_summary_en"

.field public static final ENABLE_LIVETALK_TITLE_CN:Ljava/lang/String; = "enable_livetalk_title_cn"

.field public static final ENABLE_LIVETALK_TITLE_EN:Ljava/lang/String; = "enable_livetalk_title_en"

.field public static final FROM_VIEW:Ljava/lang/String; = "fromView"

.field public static final INTENT_ACCEPT_BACK_CALL:Ljava/lang/String; = "com.miui.livetalk_ACCEPT_BACK_CALL"

.field private static final INTENT_MY_LIVETALK:Ljava/lang/String; = "com.miui.livetalk.MY_LIVETALK_VIEW"

.field private static final INTENT_PURCHASE_ACTION:Ljava/lang/String; = "com.miui.livetalk.PURCHASE_VIEW"

.field public static final INTENT_RECORD_CALL_BACK_INFO:Ljava/lang/String; = "com.miui.livetalk_RECORD_CALLBACK_INFO"

.field private static final INTENT_WELCOME_ACTION:Ljava/lang/String; = "com.miui.livetalk.WELCOME_VIEW"

.field public static final IS_LIVETALK_DIAL:Ljava/lang/String; = "isLivetalk"

.field public static final IS_NEED_PROMPT:I = 0x1

.field public static final LIVETALK_AVAILABLE:I = 0x1

.field public static final LIVETALK_AVAILABLE_STATUS:Ljava/lang/String; = "livetalk_available_status"

.field private static LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String; = null

.field public static final LIVETALK_DIAL_RANGE:Ljava/lang/String; = "livetalk_dial_range"

.field public static final LIVETALK_DIAL_RANGE_DEMOSTIC:I = 0x1

.field public static final LIVETALK_DIAL_RANGE_INTERNATIONAL:I = 0x2

.field public static final LIVETALK_DIAL_RANGE_WHOLE:I = 0x0

.field public static final LIVETALK_ENABLED:Ljava/lang/String; = "livetalk_enabled"

.field public static final LIVETALK_INTERNAL_DIAL_AVAIABLE:Ljava/lang/String; = "internal_dial_avaiable"

.field public static final LIVETALK_INTERNAL_DIAL_ENABLE:Ljava/lang/String; = "internal_dial_enable"

.field public static final LIVETALK_INTERNATIONAL_DIAL_AVAIABLE:Ljava/lang/String; = "international_dial_avaiable"

.field public static final LIVETALK_INTERNATIONAL_DIAL_ENABLE:Ljava/lang/String; = "international_dial_enable"

.field public static final LIVETALK_NOT_AVAILABLE:I = 0x0

.field public static LIVETALK_NUMBER_POOL_VERSION:I = 0x0

.field public static final LIVETALK_RECENT_COUNTRY_REMAIN_MINS:Ljava/lang/String; = "recent_country_remain_mins"

.field public static final LIVETALK_REMAIN_MINUTES:Ljava/lang/String; = "livetalk_remain_minutes"

.field public static final LIVETALK_SERVICE_NAME:Ljava/lang/String; = "com.miui.livetalk.service.LivetalkService"

.field public static final LIVETALK_SERVICE_STATUS:Ljava/lang/String; = "livetalk_service_status"

.field public static final LIVETALK_SWITCH_STATE:Ljava/lang/String; = "livetalk_switch_state"

.field public static final LIVETALK_USE_CURRENT_MI_ACCOUNT:Ljava/lang/String; = "livetalk_use_current_account"

.field public static final LIVETALK_WITH_170:I = 0x2

.field private static final META_DATA_SUPPORT_LIVETALK:Ljava/lang/String; = "support_livetalk"

.field public static final MY_LIVETALK_FROM_CONTACTS:I = 0xca

.field public static final MY_LIVETALK_FROM_NOTIFICATION:I = 0xc8

.field public static final MY_LIVETALK_FROM_SETTING:I = 0xc9

.field public static final NEED_PROMPT:Ljava/lang/String; = "need_prompt"

.field public static final NOT_NEED_PROMPT:I = 0x0

.field public static final ONLY_REGULAR_CALL:Ljava/lang/String; = "only_regular_call"

.field public static final PARAM_NUMBER:Ljava/lang/String; = "number"

.field public static final PURCHASE_FROM_DIALPAGE:I = 0x2

.field public static final PURCHASE_FROM_INTERNATIONAL:I = 0x8

.field public static final PURCHASE_FROM_NOTIFICATION:I = 0x5

.field public static final PURCHASE_FROM_SAFE_CENTER_CLEANER:I = 0x7

.field public static final PURCHASE_FROM_SAFE_CENTER_OPTIMIZE:I = 0x6

.field public static final PURCHASE_FROM_SETTING:I = 0x4

.field public static final PURCHASE_FROM_SMS:I = 0x1

.field public static final PURCHASE_FROM_YELLOWPAGE:I = 0x3

.field public static final SAFE_CENTER_CLEANER_SUMMARY:Ljava/lang/String; = "safe_center_cleaner_summary"

.field public static final SAFE_CENTER_CLEANER_TITLE:Ljava/lang/String; = "safe_center_cleaner_title"

.field public static final SAFE_CENTER_OPTIMIZE_SUMMARY_CN:Ljava/lang/String; = "safe_center_optimize_summary_cn"

.field public static final SAFE_CENTER_OPTIMIZE_SUMMARY_EN:Ljava/lang/String; = "safe_center_optimize_summary_en"

.field public static final SAFE_CENTER_OPTIMIZE_TITLE_CN:Ljava/lang/String; = "safe_center_optimize_title_cn"

.field public static final SAFE_CENTER_OPTIMIZE_TITLE_EN:Ljava/lang/String; = "safe_center_optimize_title_en"

.field public static final SIM_CARD_ACTIVATED_STATE:Ljava/lang/String; = "sim_card_activated_status"

.field public static final SIM_CARD_NUMBER:Ljava/lang/String; = "sim_card_number"

.field public static final USER_CONFIG_COMPLETED:Ljava/lang/String; = "user_config_completed"

.field public static final WELCOME_FROM_PURCHASE:I = 0x66

.field public static final WELCOME_FROM_SETTING:I = 0x65


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    sput v2, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_NUMBER_POOL_VERSION:I

    .line 112
    const/16 v0, 0x1ad

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "02131274955"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "4001017150"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "4009180380"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "057982637423"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "057982673435"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "057982637483"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "059186254445"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "4007571012"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "13365066911"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "13385093977"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "4008640266"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "01082167000"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "01082167001"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "04273682114"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "04273395714"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "07242453888"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "07242453889"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "4008121689"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "4009180330"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "076087340018"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "076087340019"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "076989244493"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "15099964229"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "13556003948"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "15975470640"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "15975470385"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "15920941035"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "15920935125"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "15920941128"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "15920938679"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "13539975792"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "15920935118"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "15920935181"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "15099964107"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "15820246441"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "13710043694"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "15800229871"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "15920935474"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "15800229851"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "15099967131"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "13538949551"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "15920941173"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "15920935439"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "15820245695"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "15112134605"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "15099972785"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "15018471154"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "15112188558"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "15986383535"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "15102081806"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "15975486452"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "15920935940"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "15112158992"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "15102023309"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "15113872672"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "13719241770"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "13719242230"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "15800229573"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "13710044218"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "15975486400"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "15986309957"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "15975486203"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "15112158303"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "15975486177"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "15113876984"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "15800229534"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "15920940930"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "15113840075"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "15920833685"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "15820265339"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "15919687084"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "02868894200"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "02868894201"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "02868894202"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "02868894203"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "02868894204"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "02868894205"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "02868894206"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "02868894207"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "02868894208"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "02868894209"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "02868894230"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "02868894231"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "02868894232"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "02868894233"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "02868894234"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "02868894235"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "02868894236"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "02868894237"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "02868894238"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "02868894239"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "076989244792"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "076938943187"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "076989244493"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "076938945606"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "076938943399"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "076989244673"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "076087340000"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "076087340001"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "076087340002"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "076087340003"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "076087340004"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "076087340005"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "076087340006"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "076087340007"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "076087340008"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "076087340009"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "076087340010"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "076087340011"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "076087340012"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "076087340013"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "076087340014"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "076087340015"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "076087340016"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "076087340017"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "076087340018"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "076087340019"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "076087340020"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "076087340021"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "076087340022"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "076087340023"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "076087340024"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "076087340025"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "076087340026"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "076087340027"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "076087340028"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "076087340029"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "076087340030"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "076087340031"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "076087340012"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "076087340033"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "076087340034"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "076087340035"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "076087340036"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "076087340037"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "076087340038"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "076087340039"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "076087340040"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "076087340041"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "076087340042"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "076087340043"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "076087340044"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "076087340045"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "076087340046"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "076087340047"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "076087340048"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "076087340049"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "076087340050"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "076087340051"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "076087340052"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "076087340053"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "076087340054"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "076087340055"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "076087340056"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "076087340057"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "076087340058"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "076087340059"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "076087340060"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "076087340061"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "076087340062"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "076087340063"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "076087340064"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "076087340065"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "076087340066"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "076087340067"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "076087340068"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "076087340069"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "076087340070"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "076087340071"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "076087340072"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "076087340073"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "076087340074"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "076087340075"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "076087340076"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "076087340077"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "076087340078"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "076087340079"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "076087340080"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "076087340081"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "076087340082"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "076087340083"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "076087340084"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "076087340085"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "076087340086"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "076087340087"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "076087340088"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "076087340089"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "076087340090"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "076087340091"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "076087340092"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "076087340093"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "076087340094"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "076087340095"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "076087340096"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "076087340097"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "076087340098"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "076087340099"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "076087340100"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "076087340101"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "076087340102"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "076087340103"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "076087340104"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "076087340105"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "076087340106"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "076087340107"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "076087340108"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "076087340109"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "076087340110"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "076087340111"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "076087340112"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "076087340113"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "076087340114"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "076087340115"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "076087340116"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "076087340117"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "076087340118"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "076087340119"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "076087340120"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "076087340121"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "076087340122"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "076087340123"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "076087340124"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "076087340125"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "076087340126"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "076087340127"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "076087340128"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "076087340129"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "076087340130"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "076087340131"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "076087340112"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "076087340133"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "076087340134"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "076087340135"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "076087340136"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "076087340137"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "076087340138"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "076087340139"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "076087340140"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "076087340141"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "076087340142"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "076087340143"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "076087340144"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "076087340145"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "076087340146"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "076087340147"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "076087340148"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "076087340149"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "076087340150"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "076087340151"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "076087340152"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "076087340153"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "076087340154"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "076087340155"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "076087340156"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "076087340157"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "076087340158"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "076087340159"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "076087340160"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "076087340161"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "076087340162"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "076087340163"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "076087340164"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "076087340165"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "076087340166"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "076087340167"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "076087340168"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "076087340169"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "076087340170"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "076087340171"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "076087340172"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "076087340173"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "076087340174"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "076087340175"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "076087340176"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "076087340177"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "076087340178"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "076087340179"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "076087340180"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "076087340181"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "076087340182"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "076087340183"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "076087340184"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "076087340185"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "076087340186"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "076087340187"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "076087340188"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "076087340189"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "076087340190"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "076087340191"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "076087340192"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "076087340193"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "076087340194"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "076087340195"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "076087340196"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "076087340197"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "076087340198"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "076087340199"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "076087340200"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "076087340201"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "076087340202"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "076087340203"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "076087340204"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "076087340205"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "076087340206"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "076087340207"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "076087340208"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "076087340209"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "076087340210"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "076087340211"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "076087340112"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "076087340213"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "076087340214"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "076087340215"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "076087340216"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "076087340217"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "076087340218"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "076087340219"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "076087340220"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "076087340221"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "076087340222"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "076087340223"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "076087340224"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "076087340225"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "076087340226"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "076087340227"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "076087340228"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "076087340229"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "076087340230"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "076087340231"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "076087340212"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "076087340233"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "076087340234"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "076087340235"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "076087340236"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "076087340237"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "076087340238"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "076087340239"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "2886544081"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "2886541100"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "2886544103"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "2886544104"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "2886544105"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "2886544107"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "2886544108"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "2886544109"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "2886544110"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "2886544111"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "2886544112"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "2886544250"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "2886544251"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "2886544252"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "2886544253"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "2886544254"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "2886544255"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "2886544256"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "2886544257"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "2886544258"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "2886544259"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "2886544260"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "2886544261"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "2886544262"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "2886544263"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "2886544264"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "2886544265"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "2886544266"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "2886544267"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "2886544268"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "2886544269"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "2886544270"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "2886544271"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "2886544272"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "2886544273"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "2886544274"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "2886544275"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "2886544276"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "2886544277"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "2886544278"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "2886544279"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "2886544280"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "2886544281"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "2886544282"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "2886544283"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "2886544284"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "2886544285"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "2886544286"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "2886544287"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "2886544288"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "2886544289"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "2886544290"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "2886544291"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "2886544292"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "2886544293"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "2886544294"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "2886544295"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "2886544296"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "2886544297"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "2886544298"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "2886544299"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "15200000000"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "15200000001"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "15200000002"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "15200000003"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string v2, "15200000004"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "15200000005"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "15200000006"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "15200000007"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, "15200000008"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "15200000009"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string v2, "15200000010"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v2, "15200000011"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string v2, "15200000012"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v2, "15200000013"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "15200000014"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "15200000015"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "15200000016"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string v2, "15200000017"

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const-string v2, "15200000018"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v2, "15200000019"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string v2, "15200000020"

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const-string v2, "15200000021"

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const-string v2, "15200000022"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string v2, "15200000023"

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    const-string v2, "15200000024"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string v2, "15200000025"

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const-string v2, "15200000026"

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const-string v2, "15200000027"

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const-string v2, "15200000028"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v2, "15200000029"

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    const-string v2, "15200000030"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrompt(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 928
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 929
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "need_prompt"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 930
    return-void
.end method

.method public static getInternalDialAvaiable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 707
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 708
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "internal_dial_avaiable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInternationalDialAvaiable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 717
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 718
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "international_dial_avaiable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInternationalRemainMins(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 899
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 900
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "recent_country_remain_mins"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLivetalkCleanerInfo(Landroid/content/Context;)Landroid/util/Pair;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 974
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "safe_center_cleaner_title"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, "title":Ljava/lang/String;
    const-string v3, "safe_center_cleaner_summary"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, "summary":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 977
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 979
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getLivetalkDialRange(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 758
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "livetalk_dial_range"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLivetalkInfo(Landroid/content/Context;)Landroid/util/Pair;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 802
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 803
    .local v6, "resolver":Landroid/content/ContentResolver;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_0

    .line 804
    invoke-static {v6, p0}, Lmiui/telephony/livetalk/LivetalkUtils;->getLivetalkinfoForKK(Landroid/content/ContentResolver;Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v9

    .line 850
    :goto_0
    return-object v9

    .line 806
    :cond_0
    const-string v8, ""

    .line 807
    .local v8, "title":Ljava/lang/String;
    const-string v7, ""

    .line 808
    .local v7, "summary":Ljava/lang/String;
    invoke-static {p0}, Lmiui/telephony/livetalk/LivetalkUtils;->getLivetalkStatus(Landroid/content/Context;)I

    move-result v4

    .line 809
    .local v4, "livetalkStatus":I
    const-string v11, "livetalk_enabled"

    invoke-static {v6, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_1

    move v2, v9

    .line 810
    .local v2, "isLivetalkEnable":Z
    :goto_1
    const-string v11, "livetalk_use_current_account"

    invoke-static {v6, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_2

    move v3, v9

    .line 812
    .local v3, "isLivetalkUseCurrentAccount":Z
    :goto_2
    const-string v11, "livetalk_switch_state"

    invoke-static {v6, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_3

    move v1, v9

    .line 814
    .local v1, "isLivetakSwitchOn":Z
    :goto_3
    const-string v11, "livetalk_dial_range"

    invoke-static {v6, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 816
    .local v0, "dialRange":I
    if-ne v9, v4, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 817
    if-eqz v1, :cond_4

    .line 818
    packed-switch v0, :pswitch_data_0

    .line 833
    :goto_4
    const v11, 0x110700aa

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "livetalk_remain_minutes"

    invoke-static {v6, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "recent_country_remain_mins"

    invoke-static {v6, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v9

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 836
    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "dialRange":I
    .end local v1    # "isLivetakSwitchOn":Z
    .end local v2    # "isLivetalkEnable":Z
    .end local v3    # "isLivetalkUseCurrentAccount":Z
    :cond_1
    move v2, v10

    .line 809
    goto :goto_1

    .restart local v2    # "isLivetalkEnable":Z
    :cond_2
    move v3, v10

    .line 810
    goto :goto_2

    .restart local v3    # "isLivetalkUseCurrentAccount":Z
    :cond_3
    move v1, v10

    .line 812
    goto :goto_3

    .line 820
    .restart local v0    # "dialRange":I
    .restart local v1    # "isLivetakSwitchOn":Z
    :pswitch_0
    const v11, 0x110700a9

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 821
    goto :goto_4

    .line 823
    :pswitch_1
    const v11, 0x110700a7

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 824
    goto :goto_4

    .line 826
    :pswitch_2
    const v11, 0x110700a8

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 831
    :cond_4
    const v11, 0x110700a6

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 837
    :cond_5
    if-ne v9, v4, :cond_b

    if-eqz v2, :cond_6

    if-nez v3, :cond_b

    .line 839
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 840
    .local v5, "locale":Ljava/lang/String;
    const-string v9, "CN"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "enable_livetalk_title_cn"

    :goto_5
    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 842
    const-string v9, "CN"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "enable_livetalk_summary_cn"

    :goto_6
    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 844
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 845
    :cond_7
    const v9, 0x110700ab

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 846
    const v9, 0x110700ac

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 848
    :cond_8
    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 840
    :cond_9
    const-string v9, "enable_livetalk_title_en"

    goto :goto_5

    .line 842
    :cond_a
    const-string v9, "enable_livetalk_summary_en"

    goto :goto_6

    .line 850
    .end local v5    # "locale":Ljava/lang/String;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getLivetalkIntentWithParam(I)Landroid/content/Intent;
    .locals 2
    .param p0, "fromView"    # I

    .prologue
    .line 680
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 681
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.livetalk.MY_LIVETALK_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const-string v1, "fromView"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    return-object v0
.end method

.method public static getLivetalkOptimizeInfo(Landroid/content/Context;)Landroid/util/Pair;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 950
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "locale":Ljava/lang/String;
    const-string v3, ""

    .line 952
    .local v3, "title":Ljava/lang/String;
    const-string v2, ""

    .line 953
    .local v2, "summary":Ljava/lang/String;
    const-string v4, "CN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 954
    const-string v4, "safe_center_optimize_title_cn"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 955
    const-string v4, "safe_center_optimize_summary_cn"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 960
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 961
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 963
    :goto_1
    return-object v4

    .line 957
    :cond_0
    const-string v4, "safe_center_optimize_title_en"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 958
    const-string v4, "safe_center_optimize_summary_en"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 963
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getLivetalkServiceStatus(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 793
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 794
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "livetalk_service_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLivetalkStatus(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 605
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 606
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lmiui/telephony/livetalk/LivetalkUtils;->supportLivetalk(Landroid/content/Context;)Z

    move-result v1

    .line 607
    .local v1, "isSupport":Z
    const/4 v0, 0x1

    .line 608
    .local v0, "defaultValue":I
    if-eqz v1, :cond_0

    const-string v3, "livetalk_available_status"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getLivetalkinfoForKK(Landroid/content/ContentResolver;Landroid/content/Context;)Landroid/util/Pair;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 856
    const-string v6, ""

    .line 857
    .local v6, "title":Ljava/lang/String;
    const-string v5, ""

    .line 858
    .local v5, "summary":Ljava/lang/String;
    invoke-static {p1}, Lmiui/telephony/livetalk/LivetalkUtils;->getLivetalkStatus(Landroid/content/Context;)I

    move-result v9

    if-ne v7, v9, :cond_6

    invoke-static {p1}, Lmiui/telephony/livetalk/LivetalkUtils;->isLivetalkEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 859
    const-string v9, "internal_dial_enable"

    invoke-static {p0, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v2, v7

    .line 861
    .local v2, "isInternalAvaiable":Z
    :goto_0
    const-string v9, "international_dial_enable"

    invoke-static {p0, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_2

    move v3, v7

    .line 863
    .local v3, "isInternationalAvaiable":Z
    :goto_1
    invoke-static {p1}, Lmiui/telephony/livetalk/LivetalkUtils;->getRemainMins(Landroid/content/Context;)I

    move-result v0

    .line 864
    .local v0, "internalMin":I
    const-string v9, "recent_country_remain_mins"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 866
    .local v1, "internationMin":I
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 867
    const v9, 0x110700a6

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 875
    :cond_0
    :goto_2
    const v9, 0x110700aa

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 877
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 890
    .end local v0    # "internalMin":I
    .end local v1    # "internationMin":I
    .end local v2    # "isInternalAvaiable":Z
    .end local v3    # "isInternationalAvaiable":Z
    :goto_3
    return-object v7

    :cond_1
    move v2, v8

    .line 859
    goto :goto_0

    .restart local v2    # "isInternalAvaiable":Z
    :cond_2
    move v3, v8

    .line 861
    goto :goto_1

    .line 868
    .restart local v0    # "internalMin":I
    .restart local v1    # "internationMin":I
    .restart local v3    # "isInternationalAvaiable":Z
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 869
    const v9, 0x110700a9

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 870
    :cond_4
    if-eqz v2, :cond_5

    .line 871
    const v9, 0x110700a7

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 872
    :cond_5
    if-eqz v3, :cond_0

    .line 873
    const v9, 0x110700a8

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 878
    .end local v0    # "internalMin":I
    .end local v1    # "internationMin":I
    .end local v2    # "isInternalAvaiable":Z
    .end local v3    # "isInternationalAvaiable":Z
    :cond_6
    invoke-static {p1}, Lmiui/telephony/livetalk/LivetalkUtils;->getLivetalkStatus(Landroid/content/Context;)I

    move-result v8

    if-ne v7, v8, :cond_b

    invoke-static {p1}, Lmiui/telephony/livetalk/LivetalkUtils;->isLivetalkEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 879
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 880
    .local v4, "locale":Ljava/lang/String;
    const-string v7, "CN"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "enable_livetalk_title_cn"

    :goto_4
    invoke-static {p0, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 882
    const-string v7, "CN"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "enable_livetalk_summary_cn"

    :goto_5
    invoke-static {p0, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 884
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 885
    :cond_7
    const v7, 0x110700ab

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 886
    const v7, 0x110700ac

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 888
    :cond_8
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 880
    :cond_9
    const-string v7, "enable_livetalk_title_en"

    goto :goto_4

    .line 882
    :cond_a
    const-string v7, "enable_livetalk_summary_en"

    goto :goto_5

    .line 890
    .end local v4    # "locale":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_3
.end method

.method public static getPurchaseIntentWithParam(I)Landroid/content/Intent;
    .locals 2
    .param p0, "fromView"    # I

    .prologue
    .line 688
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 689
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.livetalk.PURCHASE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string v1, "fromView"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 691
    return-object v0
.end method

.method public static getRemainMins(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 675
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "livetalk_remain_minutes"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSimActivatedState(Landroid/content/Context;)[I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 651
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 652
    .local v3, "slotCount":I
    new-array v2, v3, [I

    .line 653
    .local v2, "simActivateState":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_card_activated_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    return-object v2
.end method

.method public static getSimNumber(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 661
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 662
    .local v3, "slotCount":I
    new-array v2, v3, [Ljava/lang/String;

    .line 663
    .local v2, "simNumber":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 664
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_card_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_0
    return-object v2
.end method

.method public static getWelComeIntentWithParam(I)Landroid/content/Intent;
    .locals 2
    .param p0, "fromView"    # I

    .prologue
    .line 695
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 696
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.livetalk.WELCOME_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v1, "fromView"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    return-object v0
.end method

.method public static isInternalDialEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 775
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 776
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "internal_dial_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInternationalDialEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 784
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 785
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "international_dial_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLiveTalkCallbackNumber(Ljava/lang/String;)Z
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 551
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v4

    .line 555
    :cond_1
    sget-object v0, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 556
    .local v3, "suffix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 557
    const/4 v4, 0x1

    goto :goto_0

    .line 555
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isLivetalkEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 643
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "livetalk_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isLivetalkSwitchOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 749
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 750
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "livetalk_switch_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLivetalkUseCurrentAccount(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 766
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 767
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "livetalk_use_current_account"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isPrompt(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 908
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 909
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "need_prompt"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 910
    .local v0, "isNeedPrompt":Z
    :goto_0
    invoke-static {p0}, Lmiui/telephony/livetalk/LivetalkUtils;->getLivetalkStatus(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-static {p0}, Lmiui/telephony/livetalk/LivetalkUtils;->getLivetalkServiceStatus(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "isNeedPrompt":Z
    :cond_0
    move v0, v3

    .line 909
    goto :goto_0

    .restart local v0    # "isNeedPrompt":Z
    :cond_1
    move v2, v3

    .line 910
    goto :goto_1
.end method

.method public static isShowInSafeCenter(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 937
    invoke-static {p0}, Lmiui/telephony/livetalk/LivetalkUtils;->getLivetalkStatus(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {p0}, Lmiui/telephony/livetalk/LivetalkUtils;->getLivetalkServiceStatus(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {p0}, Lmiui/telephony/livetalk/LivetalkUtils;->isLivetalkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removePrompt(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 919
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 920
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "need_prompt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 921
    return-void
.end method

.method public static setInternalDialEnable(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .prologue
    .line 728
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 729
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "internal_dial_enable"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 731
    return-void

    .line 729
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setInternationalDialEnable(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .prologue
    .line 740
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 741
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "international_dial_enable"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 743
    return-void

    .line 741
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static supportLivetalk(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 616
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_1

    .line 635
    :cond_0
    :goto_0
    return v3

    .line 619
    :cond_1
    sget-boolean v4, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-nez v4, :cond_0

    .line 622
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_0

    .line 626
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.phone"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 628
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 629
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 630
    const-string v4, "support_livetalk"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 632
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 633
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateLivetalkCallBackNumber(Lorg/json/JSONArray;)V
    .locals 4
    .param p0, "numberPool"    # Lorg/json/JSONArray;

    .prologue
    .line 586
    if-nez p0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String;

    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 593
    sget-object v2, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateLivetalkCallBackNumber(Landroid/database/Cursor;)Z
    .locals 5
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 565
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v2

    .line 569
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String;

    .line 570
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 571
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 572
    sget-object v3, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String;

    const-string v4, "number"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 573
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 575
    :cond_2
    const/4 v2, 0x1

    .line 579
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 576
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

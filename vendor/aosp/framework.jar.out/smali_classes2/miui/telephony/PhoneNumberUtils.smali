.class public Lmiui/telephony/PhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;,
        Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;,
        Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    }
.end annotation


# static fields
.field private static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "86"

.field public static final CHINA_MCC:Ljava/lang/String; = "460"

.field private static final CHINA_MOBILE_NUMBER_LENGTH:I = 0xb

.field private static final CHINA_MOBILE_NUMBER_PREFIX:Ljava/lang/String; = "1"

.field private static final CHINA_REGION_CODE1:Ljava/lang/String; = "+86"

.field private static final CHINA_REGION_CODE2:Ljava/lang/String; = "0086"

.field private static final EMERGENCY_NUMBERS:[Ljava/lang/String;

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field public static final MASK_PHONE_NUMBER_MODE_HEAD:I = 0x0

.field public static final MASK_PHONE_NUMBER_MODE_MIDDLE:I = 0x2

.field public static final MASK_PHONE_NUMBER_MODE_TAIL:I = 0x1

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1092
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "110"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "112"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "119"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "120"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "122"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "911"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "999"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "995"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "100"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "101"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "102"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "190"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/telephony/PhoneNumberUtils;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    .line 778
    return-void
.end method

.method public static cancelAsyncTelocationQuery(I)V
    .locals 1
    .param p0, "token"    # I

    .prologue
    .line 979
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->cancelOperation(I)V

    .line 980
    return-void
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatNumberWithoutIp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1035
    if-nez p1, :cond_0

    move-object v2, p1

    .line 1056
    .end local p1    # "number":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1038
    .end local v2    # "number":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpEnable(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 1040
    .local v1, "isAutoIpEnabled":Z
    if-nez v1, :cond_1

    move-object v2, p1

    .line 1042
    .end local p1    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    goto :goto_0

    .line 1045
    .end local v2    # "number":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "ipPrefix":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1048
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 1051
    .end local p1    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    goto :goto_0

    .line 1053
    .end local v2    # "number":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1054
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    move-object v2, p1

    .line 1056
    .end local p1    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1000
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    .line 1001
    .local v0, "slotId":I
    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 1009
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    .line 1010
    .local v1, "telephonyManager":Lmiui/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "simOperator":Ljava/lang/String;
    const-string v2, "46000"

    invoke-virtual {v1, v0, v2}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1012
    const-string v2, "17951"

    .line 1018
    :goto_0
    return-object v2

    .line 1013
    :cond_0
    const-string v2, "46001"

    invoke-virtual {v1, v0, v2}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1014
    const-string v2, "17911"

    goto :goto_0

    .line 1015
    :cond_1
    const-string v2, "46003"

    invoke-virtual {v1, v0, v2}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1016
    const-string v2, "17901"

    goto :goto_0

    .line 1018
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method public static getPresentation(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 1268
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    :cond_0
    const/4 v0, 0x3

    .line 1276
    :goto_0
    return v0

    .line 1271
    :cond_1
    const-string v0, "-2"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1272
    const/4 v0, 0x2

    goto :goto_0

    .line 1273
    :cond_2
    const-string v0, "-3"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1274
    const/4 v0, 0x4

    goto :goto_0

    .line 1276
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPresentationString(I)Ljava/lang/String;
    .locals 3
    .param p0, "presentation"    # I

    .prologue
    .line 1283
    const-string v0, ""

    .line 1284
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 1285
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/system/R$string;->presentation_private:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1291
    :cond_0
    :goto_0
    return-object v0

    .line 1286
    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 1287
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/system/R$string;->presentation_payphone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1288
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 1289
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/system/R$string;->presentation_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 80
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 81
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 83
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Lmiui/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 85
    .local v2, "trimIndex":I
    if-gez v2, :cond_0

    .line 86
    add-int/lit8 v4, v0, -0x1

    .line 88
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static isAlnum(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1218
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaMobileNumber(Ljava/lang/String;)Z
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x0

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 157
    :cond_1
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "86"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    if-lt v2, v3, :cond_2

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    const-string v2, "86"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "861"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isChineseOperator(Ljava/lang/String;)Z
    .locals 1
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "460"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    const/4 v2, 0x0

    .line 142
    :goto_1
    return v2

    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1126
    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->isMiuiEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMiuiEmergencyNumber(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1104
    if-nez p0, :cond_1

    .line 1119
    :cond_0
    :goto_0
    return v4

    .line 1107
    :cond_1
    sget-object v0, Lmiui/telephony/PhoneNumberUtils;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1108
    .local v1, "emergencyNum":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1109
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 1110
    goto :goto_0

    .line 1113
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 1114
    goto :goto_0

    .line 1107
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isServiceNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 194
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static maskPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "cutMode"    # I

    .prologue
    .line 1165
    if-nez p0, :cond_0

    .line 1166
    const-string v6, ""

    .line 1214
    :goto_0
    return-object v6

    .line 1168
    :cond_0
    const/4 v1, 0x0

    .line 1169
    .local v1, "alnumCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 1170
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->isAlnum(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1171
    add-int/lit8 v1, v1, 0x1

    .line 1169
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1175
    :cond_2
    const/4 v2, 0x0

    .line 1176
    .local v2, "cutLength":I
    const/4 v6, 0x7

    if-ge v1, v6, :cond_3

    .line 1177
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    :cond_3
    const/16 v6, 0xb

    if-ge v1, v6, :cond_4

    .line 1179
    const/4 v2, 0x2

    .line 1184
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 1195
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid cut mode"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1181
    :cond_4
    const/4 v2, 0x3

    goto :goto_2

    .line 1186
    :pswitch_0
    const/4 v3, 0x0

    .line 1198
    .local v3, "cutStart":I
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1199
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1200
    .local v0, "addedAlnumCount":I
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 1201
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->isAlnum(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1202
    if-lt v0, v3, :cond_5

    if-gtz v2, :cond_6

    .line 1203
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1208
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 1200
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1189
    .end local v0    # "addedAlnumCount":I
    .end local v3    # "cutStart":I
    .end local v5    # "result":Ljava/lang/StringBuilder;
    :pswitch_1
    sub-int v3, v1, v2

    .line 1190
    .restart local v3    # "cutStart":I
    goto :goto_3

    .line 1192
    .end local v3    # "cutStart":I
    :pswitch_2
    sub-int v6, v1, v2

    div-int/lit8 v3, v6, 0x2

    .line 1193
    .restart local v3    # "cutStart":I
    goto :goto_3

    .line 1205
    .restart local v0    # "addedAlnumCount":I
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1206
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 1210
    :cond_7
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1214
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static minPositive(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 56
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 57
    if-ge p0, p1, :cond_1

    .line 63
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_1
    move p0, p1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    if-gez p0, :cond_0

    .line 60
    if-ltz p1, :cond_3

    move p0, p1

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static miuiFormatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1230
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1231
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v2

    .line 1232
    .local v2, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v2, :cond_0

    .line 1233
    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 1234
    .local v3, "prefix":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1235
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1236
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1, p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "formatedNumber":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1243
    .end local v0    # "formatedNumber":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v3    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static parseNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1133
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1134
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1135
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object p0

    .line 1139
    .end local v0    # "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_0
    return-object p0
.end method

.method public static parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 992
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 935
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "token"    # I
    .param p1, "cookie1"    # Ljava/lang/Object;
    .param p2, "cookie2"    # Ljava/lang/Object;
    .param p3, "cookie3"    # Ljava/lang/Object;
    .param p4, "cookie4"    # Ljava/lang/Object;
    .param p5, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p8, "enableTelocation"    # Z

    .prologue
    .line 962
    if-eqz p8, :cond_0

    .line 963
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_0
    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeDashesAndBlanks(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1066
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1077
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1070
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1072
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1073
    .local v0, "c":C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    .line 1074
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1071
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1077
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static splitNetworkAndPostDialPortion(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 174
    if-nez p0, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    .line 178
    :cond_0
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 179
    .local v0, "networkEnd":I
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 180
    .local v1, "ret":[Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 181
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string v2, ""

    :goto_1
    aput-object v2, v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static stripSeparatorsAndCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 41
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const-string v1, "+86"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    const-string v1, "0086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "0086"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1298
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "originalCount"    # I

    .prologue
    .line 1308
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 1309
    .local v3, "length":I
    :goto_0
    if-nez v3, :cond_1

    .line 1310
    const-string v5, ""

    .line 1325
    :goto_1
    return-object v5

    .line 1308
    .end local v3    # "length":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 1315
    .restart local v3    # "length":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1316
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-le v3, p1, :cond_3

    sub-int v4, v3, p1

    .line 1317
    .local v4, "originalIndex":I
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v3, :cond_5

    .line 1318
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1319
    .local v1, "c":C
    if-ge v2, v4, :cond_2

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_2

    const/16 v5, 0x40

    if-eq v1, v5, :cond_2

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_4

    .line 1320
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1317
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1    # "c":C
    .end local v2    # "i":I
    .end local v4    # "originalIndex":I
    :cond_3
    move v4, v3

    .line 1316
    goto :goto_2

    .line 1322
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    .restart local v4    # "originalIndex":I
    :cond_4
    const/16 v5, 0x78

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1325
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
